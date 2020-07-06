--------------------------------
---Author: Yu Zhang
---Email: yu.zhang.bit@gmail.com
--------------------------------

function on_init()
	targetHandle=simGetObjectHandle('set_goal_ros')
    seqs=0
    publisher_enabled=simGetScriptSimulationParameter(sim_handle_self,'publisher_enabled')
    -- Enable an image publisher and subscriber:
    if publisher_enabled then
        goal_pub=simExtRosInterface_advertise('/move_base_simple/goal', 'geometry_msgs/PoseStamped')
        simExtRosInterface_publisherTreatUInt8ArrayAsString(goal_pub)
    end
end


function on_actuation()


end


function on_sensing()
    if publisher_enabled then
        data={}
        local p=simGetObjectPosition(targetHandle,-1)
        local o=simGetObjectQuaternion(targetHandle,-1)
        local t=simGetSystemTime()
        data['header']={seq=seqs,stamp=t, frame_id="world"}
        data['pose']={position={x=p[1],y=p[2],z=p[3]},
                      orientation={x=o[1],y=o[2],z=o[3],w=o[4]}}
        seqs=seqs+1
        simExtRosInterface_publish(goal_pub,data)
    end
end


function on_cleanup()
	-- Put some restoration code here
    if publisher_enabled then
        simExtRosInterface_shutdownPublisher(goal_pub)
    end
end
