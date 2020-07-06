--------------------------------
---Author: Yu Zhang
---Email: yu.zhang.bit@gmail.com
--------------------------------

function on_init()
    modelBase=simGetObjectAssociatedWithScript(sim_handle_self)
    ref=simGetObjectHandle('GPS_reference')
    ref_parent=simGetObjectHandle('base_point')
    ui=simGetUIHandle('GPS_UI')
    simSetUIButtonLabel(ui,0,simGetObjectName(modelBase))
    publisher_enabled=simGetScriptSimulationParameter(sim_handle_self,'publisher_enabled')
    ref_lon = simGetScriptSimulationParameter(sim_handle_self,'longitude')
    ref_lat = simGetScriptSimulationParameter(sim_handle_self,'latitude')
    ref_alt = simGetScriptSimulationParameter(sim_handle_self,'altitude')
    if publisher_enabled then
        gps_pub=simExtRosInterface_advertise('/novatel/gps_fix','sensor_msgs/NavSatFix')
        simExtRosInterface_publisherTreatUInt8ArrayAsString(gps_pub)
    end

    if (simGetIntegerSignal("datum")==1) then
        datum_pub=simExtRosInterface_advertise('/odom_datum','sensor_msgs/NavSatFix')
        simExtRosInterface_publisherTreatUInt8ArrayAsString(datum_pub)
    end
    objectAbsolutePosition={}
    xShiftAmplitude=0
    yShiftAmplitude=0
    zShiftAmplitude=0
    xShift=0
    yShift=0
    zShift=0
    seqs=0
    earth=Geocentric.new(Constants.WGS84_a(), Constants.WGS84_f())
    proj = LocalCartesian.new(tonumber(ref_lat), tonumber(ref_lon), 0, earth)
end



function on_sensing()
    xNoiseAmplitude=simGetScriptSimulationParameter(sim_handle_self,'xNoiseAmplitude')
    if not xNoiseAmplitude then xNoiseAmplitude=0 end
    if xNoiseAmplitude<0 then xNoiseAmplitude=0 end
    if xNoiseAmplitude>100 then xNoiseAmplitude=100 end

    yNoiseAmplitude=simGetScriptSimulationParameter(sim_handle_self,'yNoiseAmplitude')
    if not yNoiseAmplitude then yNoiseAmplitude=0 end
    if yNoiseAmplitude<0 then yNoiseAmplitude=0 end
    if yNoiseAmplitude>100 then yNoiseAmplitude=100 end

    zNoiseAmplitude=simGetScriptSimulationParameter(sim_handle_self,'zNoiseAmplitude')
    if not zNoiseAmplitude then zNoiseAmplitude=0 end
    if zNoiseAmplitude<0 then zNoiseAmplitude=0 end
    if zNoiseAmplitude>100 then zNoiseAmplitude=100 end

    xShiftAmplitudeN=simGetScriptSimulationParameter(sim_handle_self,'xShiftAmplitude')
    if not xShiftAmplitudeN then xShiftAmplitudeN=0 end
    if xShiftAmplitudeN<0 then xShiftAmplitudeN=0 end
    if xShiftAmplitudeN>100 then xShiftAmplitudeN=100 end
    if (xShiftAmplitudeN~=xShiftAmplitude) then
        xShiftAmplitude=xShiftAmplitudeN
        xShift=2*(math.random()-0.5)*xShiftAmplitude
    end

    yShiftAmplitudeN=simGetScriptSimulationParameter(sim_handle_self,'yShiftAmplitude')
    if not yShiftAmplitudeN then yShiftAmplitudeN=0 end
    if yShiftAmplitudeN<0 then yShiftAmplitudeN=0 end
    if yShiftAmplitudeN>100 then yShiftAmplitudeN=100 end
    if (yShiftAmplitudeN~=yShiftAmplitude) then
        yShiftAmplitude=yShiftAmplitudeN
        yShift=2*(math.random()-0.5)*yShiftAmplitude
    end

    zShiftAmplitudeN=simGetScriptSimulationParameter(sim_handle_self,'zShiftAmplitude')
    if not zShiftAmplitudeN then zShiftAmplitudeN=0 end
    if zShiftAmplitudeN<0 then zShiftAmplitudeN=0 end
    if zShiftAmplitudeN>100 then zShiftAmplitudeN=100 end
    if (zShiftAmplitudeN~=zShiftAmplitude) then
        zShiftAmplitude=zShiftAmplitudeN
        zShift=2*(math.random()-0.5)*zShiftAmplitude
    end

    if publisher_enabled then
        if (simGetIntegerSignal('datum')==1) then
            objectAbsolutePosition=simGetObjectPosition(ref_parent,-1)
            o=simGetObjectQuaternion(ref_parent,-1)
        else
            objectAbsolutePosition=simGetObjectPosition(ref,-1)
            o=simGetObjectQuaternion(ref,-1)
        end


        if objectAbsolutePosition~=nil then
        -- Now add some noise to make it more realistic:  box type noise
            objectAbsolutePosition[1]=objectAbsolutePosition[1]+2*(math.random()-0.5)*xNoiseAmplitude+xShift
            objectAbsolutePosition[2]=objectAbsolutePosition[2]+2*(math.random()-0.5)*yNoiseAmplitude+yShift
            objectAbsolutePosition[3]=objectAbsolutePosition[3]+2*(math.random()-0.5)*zNoiseAmplitude+zShift

            simSetUIButtonLabel(ui,3,string.format("X-pos: %.4f",objectAbsolutePosition[1]))
            simSetUIButtonLabel(ui,4,string.format("Y-pos: %.4f",objectAbsolutePosition[2]))
            simSetUIButtonLabel(ui,5,string.format("Z-pos: %.4f",objectAbsolutePosition[3]))

            ret = proj:Reverse(objectAbsolutePosition[1], objectAbsolutePosition[2], 0)

            -- two way to feed speed infomation, let's use precise one first
            --[[local linear={}
            local rotv={}

            local mi=simGetObjectMatrix(ref,-1)
            linear,rotv=simGetObjectVelocity(ref)
            simInvertMatrix(mi)
            local linear_vel=simMultiplyVector(mi,linear)

            linear_vel[1]=linear_vel[1]-mi[4]
            linear_vel[2]=linear_vel[2]-mi[8]
            linear_vel[3]=linear_vel[3]-mi[12]
            ]]


            t=simExtRosInterface_getTime()

            if (simGetIntegerSignal("datum")==1) then
                datum_msg={
                        header={
                                    seq=seqs,
                                    stamp=t,
                                    frame_id="/odom"
                                },
                        status = {status =8},
                        latitude=tonumber(ref_lat),
                        longitude=tonumber(ref_lon),
                        altitude=tonumber(ref_alt)
                    }
                simExtRosInterface_publish(datum_pub,datum_msg)
            end


            gps_msg={
                        header={
                                    seq=seqs,
                                    stamp=t,
                                    frame_id="/odom"
                                },
                        status = {status =8},
                        latitude=ret.lat,
                        longitude=ret.lon,
                        altitude=ret.h
                    }

            simExtRosInterface_publish(gps_pub,gps_msg)
            seqs=seqs+1
        end
    end
end

function on_action()

end

function on_cleanup()
    if publisher_enabled then
        simExtRosInterface_shutdownPublisher(gps_pub)
    end
    if (simGetIntegerSignal("datum")==1) then
        simExtRosInterface_shutdownPublisher(datum_pub)
    end
end
