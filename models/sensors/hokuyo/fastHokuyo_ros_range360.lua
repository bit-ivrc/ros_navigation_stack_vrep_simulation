--------------------------------
function getTransform(objHandle,relTo)
    -- This function retrieves the stamped transform for a specific object
    p=simGetObjectPosition(objHandle,relTo)
    o=simGetObjectQuaternion(objHandle,relTo)
    return {
            trans={x=p[1],y=p[2],z=p[3]},
            rot={x=o[1],y=o[2],z=o[3],w=o[4]}
           }
end

function on_init()
    visionSensor1Handle=simGetObjectHandle("fastHokuyo_sensor1")
    visionSensor2Handle=simGetObjectHandle("fastHokuyo_sensor2")
    visionSensor3Handle=simGetObjectHandle("fastHokuyo_sensor3")
    joint1Handle=simGetObjectHandle("fastHokuyo_joint1")
    joint2Handle=simGetObjectHandle("fastHokuyo_joint2")
    joint3Handle=simGetObjectHandle("fastHokuyo_joint3")
    sensorRef=simGetObjectHandle("fastHokuyo_ref")

    -- added by zy for ros
    basePointHandle=simGetObjectHandle('base_point')
    modelHandle=simGetObjectAssociatedWithScript(sim_handle_self)
    objName=simGetObjectName(modelHandle)
    tf=getTransform(modelHandle,basePointHandle)
    --communicationTube=simTubeOpen(0,objName..'_HOKUYO',1)
    seqs=0
    previoustime=0
    maxScanDistance=simGetScriptSimulationParameter(sim_handle_self,'maxScanDistance')
    if maxScanDistance>1000 then maxScanDistance=1000 end
    if maxScanDistance<0.1 then maxScanDistance=0.1 end
    simSetObjectFloatParameter(visionSensor1Handle,1001,maxScanDistance)
    simSetObjectFloatParameter(visionSensor2Handle,1001,maxScanDistance)
    simSetObjectFloatParameter(visionSensor3Handle,1001,maxScanDistance)
    maxScanDistance_=maxScanDistance*0.9999

    scanningAngle=simGetScriptSimulationParameter(sim_handle_self,'scanAngle')
    if scanningAngle>360 then scanningAngle=360 end
    if scanningAngle<3 then scanningAngle=3 end
    scanningAngle=scanningAngle*math.pi/180
    simSetObjectFloatParameter(visionSensor1Handle,1004,scanningAngle/3)
    simSetObjectFloatParameter(visionSensor2Handle,1004,scanningAngle/3)
    simSetObjectFloatParameter(visionSensor3Handle,1004,scanningAngle/3)

    simSetJointPosition(joint1Handle,scanningAngle/3)
    simSetJointPosition(joint2Handle,scanningAngle*0)
    simSetJointPosition(joint3Handle,-scanningAngle/3)
    red={1,0,0}
    blue={0,0,1}
    lines=simAddDrawingObject(sim_drawing_lines,1,0,-1,10000,nil,nil,nil,blue)

    ros_publisher_enabled=simGetScriptSimulationParameter(sim_handle_self,'ros_publisher_enabled')
    if ros_publisher_enabled then
        ros_lidar_pub=simExtRosInterface_advertise("/ros_lidar",'sensor_msgs/PointCloud2')
        simExtRosInterface_publisherTreatUInt8ArrayAsString(ros_lidar_pub)
    end
end


function on_sensing()
    measuredData={}
    rosData={}
    local point={}
    local ros_point={}
    local test_data={}

    if notFirstHere then
        -- We skip the very first reading
        simAddDrawingObjectItem(lines,nil)
        showLines=simGetScriptSimulationParameter(sim_handle_self,'showLaserSegments')
        r,t1,u1=simReadVisionSensor(visionSensor1Handle)
        r,t2,u2=simReadVisionSensor(visionSensor2Handle)
        r,t3,u3=simReadVisionSensor(visionSensor3Handle)

        m1=simGetObjectMatrix(visionSensor1Handle,-1)
        m01=simGetInvertedMatrix(simGetObjectMatrix(sensorRef,-1))
        m01=simMultiplyMatrices(m01,m1)
        m2=simGetObjectMatrix(visionSensor2Handle,-1)
        m02=simGetInvertedMatrix(simGetObjectMatrix(sensorRef,-1))
        m02=simMultiplyMatrices(m02,m2)
        m3=simGetObjectMatrix(visionSensor3Handle,-1)
        m03=simGetInvertedMatrix(simGetObjectMatrix(sensorRef,-1))
        m03=simMultiplyMatrices(m03,m3)
        if u1 then
            p={0,0,0}
            p=simMultiplyVector(m1,p)
            t={p[1],p[2],p[3],0,0,0}
            for j=0,u1[2]-1,1 do  
                for i=0,u1[1]-1,1 do   --u1[1] denote the number of pointcloud each scan
                    w=2+4*(j*u1[1]+i)
                    v1=u1[w+1]
                    v2=u1[w+2]
                    v3=u1[w+3]
                    v4=u1[w+4]
                    if (v4<maxScanDistance_) then
                        p={v1,v2,v3}
                        p=simMultiplyVector(m01,p)
                        point={position=p,intensity=0}
                        table.insert(measuredData,point)
                        table.insert(rosData,p[1])
                        table.insert(rosData,p[2])
                        table.insert(rosData,p[3])
                    end
                    if showLines then
                        p={v1,v2,v3}
                        p=simMultiplyVector(m1,p)
                        t[4]=p[1]
                        t[5]=p[2]
                        t[6]=p[3]
                        simAddDrawingObjectItem(lines,t)
                    end
                end
            end
        end
        if u2 then
            p={0,0,0}
            p=simMultiplyVector(m2,p)
            t={p[1],p[2],p[3],0,0,0}
            for j=0,u2[2]-1,1 do
                for i=0,u2[1]-1,1 do
                    w=2+4*(j*u2[1]+i)
                    v1=u2[w+1]
                    v2=u2[w+2]
                    v3=u2[w+3]
                    v4=u2[w+4]
                    if (v4<maxScanDistance_) then
                        p={v1,v2,v3}
                        p=simMultiplyVector(m02,p)
                        point={position=p,intensity=0}
                        table.insert(measuredData,point)
                        table.insert(rosData,p[1])
                        table.insert(rosData,p[2])
                        table.insert(rosData,p[3])
                    end
                    if showLines then
                        p={v1,v2,v3}
                        p=simMultiplyVector(m2,p)
                        t[4]=p[1]
                        t[5]=p[2]
                        t[6]=p[3]
                        simAddDrawingObjectItem(lines,t)
                    end
                end
            end
        end
        if u3 then
            p={0,0,0}
            p=simMultiplyVector(m3,p)
            t={p[1],p[2],p[3],0,0,0}
            for j=0,u3[2]-1,1 do
                for i=0,u3[1]-1,1 do
                    w=2+4*(j*u3[1]+i)
                    v1=u3[w+1]
                    v2=u3[w+2]
                    v3=u3[w+3]
                    v4=u3[w+4]
                    if (v4<maxScanDistance_) then
                        p={v1,v2,v3}
                        p=simMultiplyVector(m03,p)
                        point={position=p,intensity=0}
                        table.insert(measuredData,point)
                        table.insert(rosData,p[1])
                        table.insert(rosData,p[2])
                        table.insert(rosData,p[3])
                    end
                    if showLines then
                        p={v1,v2,v3}
                        p=simMultiplyVector(m3,p)
                        t[4]=p[1]
                        t[5]=p[2]
                        t[6]=p[3]
                        simAddDrawingObjectItem(lines,t)
                    end
                end
            end
        end
    end
    notFirstHere=true

    if #measuredData >0 then
        if ros_publisher_enabled then
            local ros_data={}
            local t=simExtRosInterface_getTime()
            ros_data['header']={
                                    stamp=t,
                                    frame_id="/fastHokuyo"
                                }
            ros_data['fields']={
                                    {name='x', offset=0, datatype=7, count=1},
                                    {name='y', offset=4, datatype=7, count=1},
                                    {name='z', offset=8, datatype=7, count=1}
                                }
            ros_data['point_step']=12
            ros_data['is_bigendian']=false
            ros_data['is_dense']=true
            ros_data['width']=(#rosData)/3   -- this is very important (x,y,z) point number
            ros_data['height']=1
            ros_data['row_step']=4*(#rosData)
            ros_data['data']=simPackFloatTable(rosData)


            simExtRosInterface_publish(ros_lidar_pub,ros_data)
        end
    end
end




function on_cleanup()
    simRemoveDrawingObject(lines)
    if ros_publisher_enabled then
        simExtRosInterface_shutdownPublisher(ros_lidar_pub)
    end
end
