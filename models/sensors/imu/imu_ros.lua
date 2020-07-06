--------------------------------
---Author: Yu Zhang
---Email: yu.zhang.bit@gmail.com
--------------------------------

function on_init()
    -- Put some initialization code here
    this = simGetObjectAssociatedWithScript(sim_handle_self)
    publisher_enabled=simGetScriptSimulationParameter(sim_handle_self,'publisher_enabled')
    if publisher_enabled then
        imu_pub=simExtRosInterface_advertise('/imu/data', 'sensor_msgs/Imu')
        simExtRosInterface_publisherTreatUInt8ArrayAsString(imu_pub)
    end
    seqs=0
    pos={0,0,0}
    r = {0,0,-3.1415926/2}
    rot =simBuildMatrix(pos,r)
    basePointHandle=simGetObjectHandle('base_point')
end


function on_sensing()

    if publisher_enabled then
        -- Sensing from Accelerometer
        local xAccel=simGetFloatSignal('accelerometerX')
        local yAccel=simGetFloatSignal('accelerometerY')
        local zAccel=simGetFloatSignal('accelerometerZ')
        -- Sensing from Gyroscope
        local gyroX=simGetFloatSignal('gyroX')
        local gyroY=simGetFloatSignal('gyroY')
        local gyroZ=simGetFloatSignal('gyroZ')
    --
        --rotate pi/2 counter-clockwise
        base_matrix=simGetObjectMatrix(basePointHandle,-1)
        rotated_matrix=simMultiplyMatrices(base_matrix,rot)
        o=simGetQuaternionFromMatrix(rotated_matrix)


        local mySensorData={xAccel,yAccel,zAccel,gyroX,gyroY,gyroZ}

        if #mySensorData==0 then
            mySensorData={0,0,0,0,0,0}
        end
        --result=simSetStringSignal('imu_data',simPackFloatTable(mySensorData))
        t=simExtRosInterface_getTime()
        imu_msg={
                    header={
                                seq=seqs,
                                stamp=t,
                                frame_id="/base_link"
                            },
                    angular_velocity={
                                 x=mySensorData[4],
                                 y=mySensorData[5],
                                 z=mySensorData[6]

                            },
                    --as we don't use linear z speed , i use it to return steering angle
                    linear_acceleration={
                                 x=mySensorData[1],
                                 y=mySensorData[2],
                                 z=mySensorData[3]
                           },
                    orientation={
                                x=o[1],
                                y=o[2],
                                z=o[3],
                                w=o[4]
                        }

                }
        simExtRosInterface_publish(imu_pub,imu_msg)

        seqs=seqs+1

    end
end
