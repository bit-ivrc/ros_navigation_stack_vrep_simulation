--------------------------------
---Author: Yu Zhang
---Email: yu.zhang.bit@gmail.com
--------------------------------
function isnan(value)    -- the input should be number only, don't try other type
    if value~=value then
        return true
    end
    return false
end


-- comstomized steering callback function
function str_callback(msg)
    -- This is the subscriber callback function
    if isnan(msg.data)==false then
        simSetFloatSignal("steering",msg.data)
    else
        print("Steering value is nan, stop sending it to vrep",isnan(msg.data))
    end
end


-- dbw steering command callback function  
function dbw_str_callback(msg)
    if isnan(msg.data)==false then
        simSetFloatSignal("steering",msg.steering_wheel_angle_cmd/16)
    else
        print("dbw_steering value is nan, stop sending it to vrep",isnan(msg.steering_wheel_angle_cmd))
    end
end


--- speed callback function
function vel_callback(msg)
    -- This is the subscriber callback function
    print("vel callback is triggered")
    if isnan(msg.data)==false then
	print("speed recieved", msg.data)
	print("sending speed info")
        simSetFloatSignal("velocity",msg.data)
    else
        print("velocity value is nan, stop sending it to vrep",isnan(msg.data))
    end
end



function getTransformStamped(objHandle,name,relTo,relToName)
    -- This function retrieves the stamped transform for a specific object
    t=simExtRosInterface_getTime()
    p=simGetObjectPosition(objHandle,relTo)
    o=simGetObjectQuaternion(objHandle,relTo)
    return {
        header={
            stamp=t,
            frame_id=relToName
        },
        child_frame_id=name,
        transform={
            translation={x=p[1],y=p[2],z=p[3]},
            rotation={x=o[1],y=o[2],z=o[3],w=o[4]}
        }
    }
end

function getTransform(objHandle,relTo)
    -- This function retrieves the stamped transform for a specific object
    p=simGetObjectPosition(objHandle,relTo)
    o=simGetObjectQuaternion(objHandle,relTo)
    return {
            trans={x=p[1],y=p[2],z=p[3]},
            rot={x=o[1],y=o[2],z=o[3],w=o[4]}
           }
end


-- get odometry info 
function getOdometryStamped(objHandle,name,relTo,relToName)
    t=simExtRosInterface_getTime()
    p=simGetObjectPosition(objHandle,relTo)
    o=simGetObjectQuaternion(objHandle,relTo)
    local linear={}
    local rotv={}

    local mi=simGetObjectMatrix(objHandle,-1)
    linear,rotv=simGetObjectVelocity(objHandle)
    simInvertMatrix(mi)
    local linear_vel=simMultiplyVector(mi,linear)

    linear_vel[1]=linear_vel[1]-mi[4]
    linear_vel[2]=linear_vel[2]-mi[8]
    linear_vel[3]=linear_vel[3]-mi[12]
    -- unclear how to convert angular velocity to local frame
    -- to be done, but the message info is all right

    --local pos={0,0,0}
    --local rot={rotv[1]/1000,rotv[2]/1000,rotv[3]/1000}
    --local em=simBuildMatrix(pos,rot)
    --local mout=simMultiplyMatrices(mi,em)
    --local AngVec=simGetEulerAnglesFromMatrix(mout)
    --AngVec[1]=AngVec[1]*1000
    --AngVec[2]=AngVec[2]*1000
    --AngVec[3]=AngVec[3]*1000


    local steering_angle=simGetJointPosition(steeringWheel_measure_handle)

    local curvature=math.tan(steering_angle)/L
	
    return {
            header={
                        seq=seqs,
                       stamp=t,
                        frame_id=relToName
                    },
            child_frame_id=name,
            pose={
                    pose={
                            position={x=p[1],y=p[2],z=p[3]},
                            orientation={x=o[1],y=o[2],z=o[3],w=o[4]}
                         }

                  },
            --as we don't use linear z speed , i use it to return steering angle
            twist={ twist={
                            linear={x=linear_vel[1], y=linear_vel[2], z=curvature},
                            angular={x=rotv[1],y=rotv[2],z=rotv[3]}
                           }
                   }
}
end

-- get position , orientation, linear_velocity(local frame) , rotation rate
function getMotionData(objHandle,relTo)
    p = simGetObjectPosition(objHandle,relTo)
    o = simGetObjectMatrix(objHandle, -1)
    local matrix = simGetObjectMatrix(objHandle, -1)
    local angle = simGetEulerAnglesFromMatrix(matrix)
    local linear = {}
    local rotv = {}
 
    local mi=simGetObjectMatrix(objHandle,-1)
    linear,rotv=simGetObjectVelocity(objHandle)
    simInvertMatrix(mi)
    local linear_vel=simMultiplyVector(mi,linear)

    linear_vel[1]=linear_vel[1]-mi[4]
    linear_vel[2]=linear_vel[2]-mi[8]
    linear_vel[3]=linear_vel[3]-mi[12]
    -- this motion data structure for getVehicleState 
    return {pos=p,orient=o,lv=linear_vel,rv=rotv,ang=angle}
end

function getVehicleState(motion,t,xAcc,yAcc,zAcc) -- motion data, ros::time , acceleration x, y z
    return {
            header={stamp=t, frame_id="/odom"},
            child_frame_id="/base_link",
            position={x=motion.pos[1],y=motion.pos[2],z=motion.pos[3]},
            orientation={x=motion.ang[1],y=motion.ang[2],z=motion.ang[3]},
            velocity={
                        linear={x=motion.lv[1],y=motion.lv[2],z=motion.lv[3]},
                        angular={x=motion.rv[1],y=motion.rv[2],z=motion.rv[3]}
                      },
            --acceleration   -- there is a problem here. need to be fixed.
            }
end

function on_init()

    -- Put some initialization code here
    seqs=0
    
    --R = 0.33
    L = simGetFloatSignal("wheelBase")
    R = 0.33265  -- in meters,  radius of wheels
    -- Retrive the handle of the vision sensor we wish to stream:
    -- base_link
    steeringWheel_measure_handle=simGetObjectHandle("vw_steeringWheelJoint")
    steeringWheel_joint_handle=simGetObjectHandle("vw_steeringWheelJoint")
    basePointHandle=simGetObjectHandle('base_point')

    -- joint name
    rear_left_joint_handle=simGetObjectHandle("vw_freeAxisLeft")
    rear_right_joint_handle=simGetObjectHandle("vw_freeAxisRight")
    front_left_joint_handle=simGetObjectHandle("vw_motorLeft")
    front_right_joint_handle=simGetObjectHandle("vw_motorRight")


    
    fake_ekf_msg_enabled=simGetScriptSimulationParameter(sim_handle_self,'fake_ekf_msg_enabled')

    fake_ekf_msg_enabled=true
    ------------ ros  publisher  ----------
    dbw_steering_pub=simExtRosInterface_advertise('/vehicle/steering_report','dbw_mkz_msgs/SteeringReport')
    odom_pub=simExtRosInterface_advertise('/odom','nav_msgs/Odometry')
    simExtRosInterface_publisherTreatUInt8ArrayAsString(odom_pub)
    if (fake_ekf_msg_enabled) then
        vehicle_state_pub=simExtRosInterface_advertise('/vehicle_state','anm_msgs/VehicleState')
        simExtRosInterface_publisherTreatUInt8ArrayAsString(vehicle_state_pub)
        simSetIntegerSignal("datum",1)
    end


    ------------ ros subscriber -----------
    steering_subscriber=simExtRosInterface_subscribe('/cmd_str','std_msgs/Float32','str_callback')

    speed_subscriber=simExtRosInterface_subscribe('/cmd_vel','std_msgs/Float32','vel_callback')

    dbw_steering_subscriber=simExtRosInterface_subscribe('/vehicle/steering_cmd','dbw_mkz_msgs/SteeringCmd','dbw_str_callback')
    hokuyoHandle=simGetObjectHandle('fastHokuyo_ref')
end

function on_actuation()
    if fake_ekf_msg_enabled then
        --tranforms={getTransformStamped(basePointHandle,'base_link',-1,'/odom'),
        --        getTransformStamped(hokuyoHandle,'fastHokuyo',basePointHandle,'base_link')}
        if hokuyoHandle ~= -1 then 
           --print("find hokuyo")
	   --tranforms={getTransformStamped(basePointHandle,'base_link',-1,'/odom'),
           --getTransformStamped(hokuyoHandle,'fastHokuyo',basePointHandle,'base_link')}

	   tranforms={getTransformStamped(hokuyoHandle,'fastHokuyo',basePointHandle,'base_link')}
        else
           --print("can't find hokuyo.") 
	   tranforms={getTransformStamped(basePointHandle,'base_link',-1,'/odom')}
        end
        simExtRosInterface_sendTransforms(tranforms)
    end
end

function on_sensing()
    motion_data = getMotionData(basePointHandle, -1)
    tf = getTransform(basePointHandle, -1)  -- -1 means world handle
    t = simExtRosInterface_getTime()

    -- ready to publish fake ekf state
    if (fake_ekf_msg_enabled) then
        simExtRosInterface_publish(vehicle_state_pub,
            getVehicleState(motion_data, t, xAccel, yAccel, zAccel))
    end

    dbw_steering = {}
    dbw_steering['header'] =
    {
        seq = seqs,
        stamp = t,
        frame_id = "/base_link"
    }
    dbw_steering['speed'] = motion_data.lv[1]
    local steering_angle = simGetJointPosition(steeringWheel_measure_handle)
    dbw_steering['steering_wheel_angle'] = steering_angle*16

    simExtRosInterface_publish(dbw_steering_pub, dbw_steering)
    simExtRosInterface_publish(odom_pub,
        getOdometryStamped(basePointHandle, 'base_link', -1, '/odom'))
    seqs = seqs + 1
end

function on_cleanup()
    simExtRosInterface_shutdownSubscriber(steering_subscriber)
    simExtRosInterface_shutdownSubscriber(speed_subscriber)
    simExtRosInterface_shutdownSubscriber(dbw_steering_subscriber)
    simExtRosInterface_shutdownPublisher(odom_pub)
    simExtRosInterface_shutdownPublisher(dbw_steering_pub)
    if (fake_ekf_msg_enabled) then
        simExtRosInterface_shutdownPublisher(vehicle_state_pub)
    end
end
