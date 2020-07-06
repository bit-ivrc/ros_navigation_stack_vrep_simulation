---------------------------------
---Author: Yu Zhang
---Email: yu.zhang.bit@gmail.com
---------------------------------

function get_global_pos(relPose,framMatrix)
    local pose={relPose[1],relPose[2],0}
    local rot={0,0,0}
    local trans=simBuildMatrix(pose,rot)
    local global_pose_matrix=simMultiplyMatrices(framMatrix,trans)
    return {global_pose_matrix[4],global_pose_matrix[8]}
end

-- global path display callback function
function global_vis_callback(msg)
    simAddDrawingObjectItem(global_lines,nil)
    local size=#(msg.poses)

    base=simGetObjectMatrix(base_link_handle,-1)
    if msg.header.frame_id =="/odom" then
        for i=1, size-1, 1 do
            local front={msg.poses[i].pose.position.x, msg.poses[i].pose.position.y}
            local linend={msg.poses[i+1].pose.position.x, msg.poses[i+1].pose.position.y}
            local t={front[1],front[2],0, linend[1],linend[2],0}
            simAddDrawingObjectItem(global_lines,t)
        end
    end
end

-- local path display callback function
function vis_callback(msg)
    if not enable_buffer then
        simAddDrawingObjectItem(lines,nil)
    end
    local size=#(msg.poses)

    base=simGetObjectMatrix(base_link_handle,-1)
    if msg.header.frame_id == "/base_link" then
        for i=1,size-1,1 do
            local front={msg.poses[i].pose.position.x, msg.poses[i].pose.position.y}
            local front=get_global_pos(front,base)
            local linend={msg.poses[i+1].pose.position.x, msg.poses[i+1].pose.position.y}
            local linend=get_global_pos(linend,base)
            local t={front[1],front[2],0, linend[1],linend[2],0}
            simAddDrawingObjectItem(lines,t)
        end
    end
    if msg.header.frame_id =="/odom" then
        for i=1, size-1, 1 do
            local front={msg.poses[i].pose.position.x, msg.poses[i].pose.position.y}
            local linend={msg.poses[i+1].pose.position.x, msg.poses[i+1].pose.position.y}
            local t={front[1],front[2],0, linend[1],linend[2],0}
            simAddDrawingObjectItem(lines,t)
        end
    end
end


function on_init()
    -- try to subscribe the path
    enable_desired_path=simGetScriptSimulationParameter(sim_handle_self,'enable_desired_path')

    enable_global_path_display=simGetScriptSimulationParameter(sim_handle_self,'enable_global_path_display')

    enable_buffer=simGetScriptSimulationParameter(sim_handle_self,'enable_buffer')
    base_link_handle =simGetObjectHandle('base_point')
    pink={1,0,1}
    blue={0,0,1}
    local width=2
    lines=simAddDrawingObject(sim_drawing_lines,width,0,-1,1000000,nil,nil,nil,pink)
    global_lines=simAddDrawingObject(sim_drawing_lines,width,0,-1,1000000,nil,nil,nil,blue)

    if enable_desired_path then
        localpath_subscriber=simExtRosInterface_subscribe('/local_path','nav_msgs/Path','vis_callback')
        simExtRosInterface_subscriberTreatUInt8ArrayAsString(localpath_subscriber)
    end
    if enable_global_path_display then
        globalpath_subscriber=simExtRosInterface_subscribe('/global_path','nav_msgs/Path','global_vis_callback')
        simExtRosInterface_subscriberTreatUInt8ArrayAsString(globalpath_subscriber)
    end
end

function on_actuation()
end

function on_sensing()
end



function on_cleanup()
	if enable_desired_path then
       print("desired_path",enable_desired_path)
       simExtRosInterface_shutdownSubscriber(localpath_subscriber)
    end
    if enable_global_path_display then
       print("global_path",enable_global_path_display)
       simExtRosInterface_shutdownSubscriber(globalpath_subscriber)
    end
end
