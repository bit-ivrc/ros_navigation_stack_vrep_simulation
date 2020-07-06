    else if(publisherProxy->topicType == "anm_msgs/CommandCheckingReport")
    {
        anm_msgs::CommandCheckingReport msg;
        read__anm_msgs__CommandCheckingReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/DynamicObstacle")
    {
        anm_msgs::DynamicObstacle msg;
        read__anm_msgs__DynamicObstacle(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/DynamicObstacleList")
    {
        anm_msgs::DynamicObstacleList msg;
        read__anm_msgs__DynamicObstacleList(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/HMIReport")
    {
        anm_msgs::HMIReport msg;
        read__anm_msgs__HMIReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/NearestAnmWaypoint")
    {
        anm_msgs::NearestAnmWaypoint msg;
        read__anm_msgs__NearestAnmWaypoint(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/PathState")
    {
        anm_msgs::PathState msg;
        read__anm_msgs__PathState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/ShuttleRequest")
    {
        anm_msgs::ShuttleRequest msg;
        read__anm_msgs__ShuttleRequest(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/SpiralPath")
    {
        anm_msgs::SpiralPath msg;
        read__anm_msgs__SpiralPath(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/SystemState")
    {
        anm_msgs::SystemState msg;
        read__anm_msgs__SystemState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/V2XStopSign")
    {
        anm_msgs::V2XStopSign msg;
        read__anm_msgs__V2XStopSign(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/V2XStopSignList")
    {
        anm_msgs::V2XStopSignList msg;
        read__anm_msgs__V2XStopSignList(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/V2XTrafficLight")
    {
        anm_msgs::V2XTrafficLight msg;
        read__anm_msgs__V2XTrafficLight(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/V2XTrafficLightList")
    {
        anm_msgs::V2XTrafficLightList msg;
        read__anm_msgs__V2XTrafficLightList(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/V2XVehicle")
    {
        anm_msgs::V2XVehicle msg;
        read__anm_msgs__V2XVehicle(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/V2XVehicleList")
    {
        anm_msgs::V2XVehicleList msg;
        read__anm_msgs__V2XVehicleList(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "anm_msgs/VehicleState")
    {
        anm_msgs::VehicleState msg;
        read__anm_msgs__VehicleState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "control_msgs/JointControllerState")
    {
        control_msgs::JointControllerState msg;
        read__control_msgs__JointControllerState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "control_msgs/JointTolerance")
    {
        control_msgs::JointTolerance msg;
        read__control_msgs__JointTolerance(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/AmbientLight")
    {
        dbw_mkz_msgs::AmbientLight msg;
        read__dbw_mkz_msgs__AmbientLight(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/BrakeCmd")
    {
        dbw_mkz_msgs::BrakeCmd msg;
        read__dbw_mkz_msgs__BrakeCmd(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/BrakeInfoReport")
    {
        dbw_mkz_msgs::BrakeInfoReport msg;
        read__dbw_mkz_msgs__BrakeInfoReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/BrakeReport")
    {
        dbw_mkz_msgs::BrakeReport msg;
        read__dbw_mkz_msgs__BrakeReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/FuelLevelReport")
    {
        dbw_mkz_msgs::FuelLevelReport msg;
        read__dbw_mkz_msgs__FuelLevelReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/Gear")
    {
        dbw_mkz_msgs::Gear msg;
        read__dbw_mkz_msgs__Gear(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/GearCmd")
    {
        dbw_mkz_msgs::GearCmd msg;
        read__dbw_mkz_msgs__GearCmd(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/GearReport")
    {
        dbw_mkz_msgs::GearReport msg;
        read__dbw_mkz_msgs__GearReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/HillStartAssist")
    {
        dbw_mkz_msgs::HillStartAssist msg;
        read__dbw_mkz_msgs__HillStartAssist(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/Misc1Report")
    {
        dbw_mkz_msgs::Misc1Report msg;
        read__dbw_mkz_msgs__Misc1Report(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/ParkingBrake")
    {
        dbw_mkz_msgs::ParkingBrake msg;
        read__dbw_mkz_msgs__ParkingBrake(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/SteeringCmd")
    {
        dbw_mkz_msgs::SteeringCmd msg;
        read__dbw_mkz_msgs__SteeringCmd(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/SteeringReport")
    {
        dbw_mkz_msgs::SteeringReport msg;
        read__dbw_mkz_msgs__SteeringReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/SurroundReport")
    {
        dbw_mkz_msgs::SurroundReport msg;
        read__dbw_mkz_msgs__SurroundReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/SuspensionReport")
    {
        dbw_mkz_msgs::SuspensionReport msg;
        read__dbw_mkz_msgs__SuspensionReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/ThrottleCmd")
    {
        dbw_mkz_msgs::ThrottleCmd msg;
        read__dbw_mkz_msgs__ThrottleCmd(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/ThrottleInfoReport")
    {
        dbw_mkz_msgs::ThrottleInfoReport msg;
        read__dbw_mkz_msgs__ThrottleInfoReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/ThrottleReport")
    {
        dbw_mkz_msgs::ThrottleReport msg;
        read__dbw_mkz_msgs__ThrottleReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/TirePressureReport")
    {
        dbw_mkz_msgs::TirePressureReport msg;
        read__dbw_mkz_msgs__TirePressureReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/TurnSignal")
    {
        dbw_mkz_msgs::TurnSignal msg;
        read__dbw_mkz_msgs__TurnSignal(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/TurnSignalCmd")
    {
        dbw_mkz_msgs::TurnSignalCmd msg;
        read__dbw_mkz_msgs__TurnSignalCmd(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/TwistCmd")
    {
        dbw_mkz_msgs::TwistCmd msg;
        read__dbw_mkz_msgs__TwistCmd(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/WatchdogCounter")
    {
        dbw_mkz_msgs::WatchdogCounter msg;
        read__dbw_mkz_msgs__WatchdogCounter(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/WheelSpeedReport")
    {
        dbw_mkz_msgs::WheelSpeedReport msg;
        read__dbw_mkz_msgs__WheelSpeedReport(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dbw_mkz_msgs/Wiper")
    {
        dbw_mkz_msgs::Wiper msg;
        read__dbw_mkz_msgs__Wiper(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "diagnostic_msgs/DiagnosticArray")
    {
        diagnostic_msgs::DiagnosticArray msg;
        read__diagnostic_msgs__DiagnosticArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "diagnostic_msgs/DiagnosticStatus")
    {
        diagnostic_msgs::DiagnosticStatus msg;
        read__diagnostic_msgs__DiagnosticStatus(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "diagnostic_msgs/KeyValue")
    {
        diagnostic_msgs::KeyValue msg;
        read__diagnostic_msgs__KeyValue(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dynamic_reconfigure/BoolParameter")
    {
        dynamic_reconfigure::BoolParameter msg;
        read__dynamic_reconfigure__BoolParameter(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dynamic_reconfigure/Config")
    {
        dynamic_reconfigure::Config msg;
        read__dynamic_reconfigure__Config(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dynamic_reconfigure/ConfigDescription")
    {
        dynamic_reconfigure::ConfigDescription msg;
        read__dynamic_reconfigure__ConfigDescription(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dynamic_reconfigure/DoubleParameter")
    {
        dynamic_reconfigure::DoubleParameter msg;
        read__dynamic_reconfigure__DoubleParameter(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dynamic_reconfigure/Group")
    {
        dynamic_reconfigure::Group msg;
        read__dynamic_reconfigure__Group(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dynamic_reconfigure/GroupState")
    {
        dynamic_reconfigure::GroupState msg;
        read__dynamic_reconfigure__GroupState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dynamic_reconfigure/IntParameter")
    {
        dynamic_reconfigure::IntParameter msg;
        read__dynamic_reconfigure__IntParameter(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dynamic_reconfigure/ParamDescription")
    {
        dynamic_reconfigure::ParamDescription msg;
        read__dynamic_reconfigure__ParamDescription(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dynamic_reconfigure/SensorLevels")
    {
        dynamic_reconfigure::SensorLevels msg;
        read__dynamic_reconfigure__SensorLevels(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "dynamic_reconfigure/StrParameter")
    {
        dynamic_reconfigure::StrParameter msg;
        read__dynamic_reconfigure__StrParameter(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "gazebo_msgs/ContactState")
    {
        gazebo_msgs::ContactState msg;
        read__gazebo_msgs__ContactState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "gazebo_msgs/ContactsState")
    {
        gazebo_msgs::ContactsState msg;
        read__gazebo_msgs__ContactsState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "gazebo_msgs/LinkState")
    {
        gazebo_msgs::LinkState msg;
        read__gazebo_msgs__LinkState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "gazebo_msgs/LinkStates")
    {
        gazebo_msgs::LinkStates msg;
        read__gazebo_msgs__LinkStates(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "gazebo_msgs/ModelState")
    {
        gazebo_msgs::ModelState msg;
        read__gazebo_msgs__ModelState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "gazebo_msgs/ModelStates")
    {
        gazebo_msgs::ModelStates msg;
        read__gazebo_msgs__ModelStates(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "gazebo_msgs/ODEJointProperties")
    {
        gazebo_msgs::ODEJointProperties msg;
        read__gazebo_msgs__ODEJointProperties(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "gazebo_msgs/ODEPhysics")
    {
        gazebo_msgs::ODEPhysics msg;
        read__gazebo_msgs__ODEPhysics(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "gazebo_msgs/WorldState")
    {
        gazebo_msgs::WorldState msg;
        read__gazebo_msgs__WorldState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Accel")
    {
        geometry_msgs::Accel msg;
        read__geometry_msgs__Accel(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/AccelStamped")
    {
        geometry_msgs::AccelStamped msg;
        read__geometry_msgs__AccelStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/AccelWithCovariance")
    {
        geometry_msgs::AccelWithCovariance msg;
        read__geometry_msgs__AccelWithCovariance(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/AccelWithCovarianceStamped")
    {
        geometry_msgs::AccelWithCovarianceStamped msg;
        read__geometry_msgs__AccelWithCovarianceStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Inertia")
    {
        geometry_msgs::Inertia msg;
        read__geometry_msgs__Inertia(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/InertiaStamped")
    {
        geometry_msgs::InertiaStamped msg;
        read__geometry_msgs__InertiaStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Point")
    {
        geometry_msgs::Point msg;
        read__geometry_msgs__Point(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Point32")
    {
        geometry_msgs::Point32 msg;
        read__geometry_msgs__Point32(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/PointStamped")
    {
        geometry_msgs::PointStamped msg;
        read__geometry_msgs__PointStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Polygon")
    {
        geometry_msgs::Polygon msg;
        read__geometry_msgs__Polygon(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/PolygonStamped")
    {
        geometry_msgs::PolygonStamped msg;
        read__geometry_msgs__PolygonStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Pose")
    {
        geometry_msgs::Pose msg;
        read__geometry_msgs__Pose(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Pose2D")
    {
        geometry_msgs::Pose2D msg;
        read__geometry_msgs__Pose2D(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/PoseArray")
    {
        geometry_msgs::PoseArray msg;
        read__geometry_msgs__PoseArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/PoseStamped")
    {
        geometry_msgs::PoseStamped msg;
        read__geometry_msgs__PoseStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/PoseWithCovariance")
    {
        geometry_msgs::PoseWithCovariance msg;
        read__geometry_msgs__PoseWithCovariance(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/PoseWithCovarianceStamped")
    {
        geometry_msgs::PoseWithCovarianceStamped msg;
        read__geometry_msgs__PoseWithCovarianceStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Quaternion")
    {
        geometry_msgs::Quaternion msg;
        read__geometry_msgs__Quaternion(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/QuaternionStamped")
    {
        geometry_msgs::QuaternionStamped msg;
        read__geometry_msgs__QuaternionStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Transform")
    {
        geometry_msgs::Transform msg;
        read__geometry_msgs__Transform(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/TransformStamped")
    {
        geometry_msgs::TransformStamped msg;
        read__geometry_msgs__TransformStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Twist")
    {
        geometry_msgs::Twist msg;
        read__geometry_msgs__Twist(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/TwistStamped")
    {
        geometry_msgs::TwistStamped msg;
        read__geometry_msgs__TwistStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/TwistWithCovariance")
    {
        geometry_msgs::TwistWithCovariance msg;
        read__geometry_msgs__TwistWithCovariance(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/TwistWithCovarianceStamped")
    {
        geometry_msgs::TwistWithCovarianceStamped msg;
        read__geometry_msgs__TwistWithCovarianceStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Vector3")
    {
        geometry_msgs::Vector3 msg;
        read__geometry_msgs__Vector3(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Vector3Stamped")
    {
        geometry_msgs::Vector3Stamped msg;
        read__geometry_msgs__Vector3Stamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/Wrench")
    {
        geometry_msgs::Wrench msg;
        read__geometry_msgs__Wrench(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "geometry_msgs/WrenchStamped")
    {
        geometry_msgs::WrenchStamped msg;
        read__geometry_msgs__WrenchStamped(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "map_msgs/OccupancyGridUpdate")
    {
        map_msgs::OccupancyGridUpdate msg;
        read__map_msgs__OccupancyGridUpdate(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "map_msgs/PointCloud2Update")
    {
        map_msgs::PointCloud2Update msg;
        read__map_msgs__PointCloud2Update(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "map_msgs/ProjectedMap")
    {
        map_msgs::ProjectedMap msg;
        read__map_msgs__ProjectedMap(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "map_msgs/ProjectedMapInfo")
    {
        map_msgs::ProjectedMapInfo msg;
        read__map_msgs__ProjectedMapInfo(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "nav_msgs/GridCells")
    {
        nav_msgs::GridCells msg;
        read__nav_msgs__GridCells(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "nav_msgs/MapMetaData")
    {
        nav_msgs::MapMetaData msg;
        read__nav_msgs__MapMetaData(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "nav_msgs/OccupancyGrid")
    {
        nav_msgs::OccupancyGrid msg;
        read__nav_msgs__OccupancyGrid(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "nav_msgs/Odometry")
    {
        nav_msgs::Odometry msg;
        read__nav_msgs__Odometry(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "nav_msgs/Path")
    {
        nav_msgs::Path msg;
        read__nav_msgs__Path(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "roscpp/Logger")
    {
        roscpp::Logger msg;
        read__roscpp__Logger(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "rosgraph_msgs/Clock")
    {
        rosgraph_msgs::Clock msg;
        read__rosgraph_msgs__Clock(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "rosgraph_msgs/Log")
    {
        rosgraph_msgs::Log msg;
        read__rosgraph_msgs__Log(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "rosgraph_msgs/TopicStatistics")
    {
        rosgraph_msgs::TopicStatistics msg;
        read__rosgraph_msgs__TopicStatistics(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/CameraInfo")
    {
        sensor_msgs::CameraInfo msg;
        read__sensor_msgs__CameraInfo(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/ChannelFloat32")
    {
        sensor_msgs::ChannelFloat32 msg;
        read__sensor_msgs__ChannelFloat32(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/CompressedImage")
    {
        sensor_msgs::CompressedImage msg;
        read__sensor_msgs__CompressedImage(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/FluidPressure")
    {
        sensor_msgs::FluidPressure msg;
        read__sensor_msgs__FluidPressure(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/Illuminance")
    {
        sensor_msgs::Illuminance msg;
        read__sensor_msgs__Illuminance(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/Image")
    {
        sensor_msgs::Image msg;
        read__sensor_msgs__Image(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/Imu")
    {
        sensor_msgs::Imu msg;
        read__sensor_msgs__Imu(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/JointState")
    {
        sensor_msgs::JointState msg;
        read__sensor_msgs__JointState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/Joy")
    {
        sensor_msgs::Joy msg;
        read__sensor_msgs__Joy(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/JoyFeedback")
    {
        sensor_msgs::JoyFeedback msg;
        read__sensor_msgs__JoyFeedback(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/JoyFeedbackArray")
    {
        sensor_msgs::JoyFeedbackArray msg;
        read__sensor_msgs__JoyFeedbackArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/LaserEcho")
    {
        sensor_msgs::LaserEcho msg;
        read__sensor_msgs__LaserEcho(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/LaserScan")
    {
        sensor_msgs::LaserScan msg;
        read__sensor_msgs__LaserScan(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/MagneticField")
    {
        sensor_msgs::MagneticField msg;
        read__sensor_msgs__MagneticField(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/MultiDOFJointState")
    {
        sensor_msgs::MultiDOFJointState msg;
        read__sensor_msgs__MultiDOFJointState(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/MultiEchoLaserScan")
    {
        sensor_msgs::MultiEchoLaserScan msg;
        read__sensor_msgs__MultiEchoLaserScan(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/NavSatFix")
    {
        sensor_msgs::NavSatFix msg;
        read__sensor_msgs__NavSatFix(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/NavSatStatus")
    {
        sensor_msgs::NavSatStatus msg;
        read__sensor_msgs__NavSatStatus(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/PointCloud")
    {
        sensor_msgs::PointCloud msg;
        read__sensor_msgs__PointCloud(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/PointCloud2")
    {
        sensor_msgs::PointCloud2 msg;
        read__sensor_msgs__PointCloud2(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/PointField")
    {
        sensor_msgs::PointField msg;
        read__sensor_msgs__PointField(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/Range")
    {
        sensor_msgs::Range msg;
        read__sensor_msgs__Range(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/RegionOfInterest")
    {
        sensor_msgs::RegionOfInterest msg;
        read__sensor_msgs__RegionOfInterest(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/RelativeHumidity")
    {
        sensor_msgs::RelativeHumidity msg;
        read__sensor_msgs__RelativeHumidity(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/Temperature")
    {
        sensor_msgs::Temperature msg;
        read__sensor_msgs__Temperature(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "sensor_msgs/TimeReference")
    {
        sensor_msgs::TimeReference msg;
        read__sensor_msgs__TimeReference(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "shape_msgs/Mesh")
    {
        shape_msgs::Mesh msg;
        read__shape_msgs__Mesh(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "shape_msgs/MeshTriangle")
    {
        shape_msgs::MeshTriangle msg;
        read__shape_msgs__MeshTriangle(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "shape_msgs/Plane")
    {
        shape_msgs::Plane msg;
        read__shape_msgs__Plane(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "shape_msgs/SolidPrimitive")
    {
        shape_msgs::SolidPrimitive msg;
        read__shape_msgs__SolidPrimitive(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "smach_msgs/SmachContainerInitialStatusCmd")
    {
        smach_msgs::SmachContainerInitialStatusCmd msg;
        read__smach_msgs__SmachContainerInitialStatusCmd(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "smach_msgs/SmachContainerStatus")
    {
        smach_msgs::SmachContainerStatus msg;
        read__smach_msgs__SmachContainerStatus(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "smach_msgs/SmachContainerStructure")
    {
        smach_msgs::SmachContainerStructure msg;
        read__smach_msgs__SmachContainerStructure(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Bool")
    {
        std_msgs::Bool msg;
        read__std_msgs__Bool(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Byte")
    {
        std_msgs::Byte msg;
        read__std_msgs__Byte(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/ByteMultiArray")
    {
        std_msgs::ByteMultiArray msg;
        read__std_msgs__ByteMultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Char")
    {
        std_msgs::Char msg;
        read__std_msgs__Char(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/ColorRGBA")
    {
        std_msgs::ColorRGBA msg;
        read__std_msgs__ColorRGBA(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Duration")
    {
        std_msgs::Duration msg;
        read__std_msgs__Duration(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Empty")
    {
        std_msgs::Empty msg;
        read__std_msgs__Empty(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Float32")
    {
        std_msgs::Float32 msg;
        read__std_msgs__Float32(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Float32MultiArray")
    {
        std_msgs::Float32MultiArray msg;
        read__std_msgs__Float32MultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Float64")
    {
        std_msgs::Float64 msg;
        read__std_msgs__Float64(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Float64MultiArray")
    {
        std_msgs::Float64MultiArray msg;
        read__std_msgs__Float64MultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Header")
    {
        std_msgs::Header msg;
        read__std_msgs__Header(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Int16")
    {
        std_msgs::Int16 msg;
        read__std_msgs__Int16(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Int16MultiArray")
    {
        std_msgs::Int16MultiArray msg;
        read__std_msgs__Int16MultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Int32")
    {
        std_msgs::Int32 msg;
        read__std_msgs__Int32(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Int32MultiArray")
    {
        std_msgs::Int32MultiArray msg;
        read__std_msgs__Int32MultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Int64")
    {
        std_msgs::Int64 msg;
        read__std_msgs__Int64(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Int64MultiArray")
    {
        std_msgs::Int64MultiArray msg;
        read__std_msgs__Int64MultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Int8")
    {
        std_msgs::Int8 msg;
        read__std_msgs__Int8(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Int8MultiArray")
    {
        std_msgs::Int8MultiArray msg;
        read__std_msgs__Int8MultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/MultiArrayDimension")
    {
        std_msgs::MultiArrayDimension msg;
        read__std_msgs__MultiArrayDimension(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/MultiArrayLayout")
    {
        std_msgs::MultiArrayLayout msg;
        read__std_msgs__MultiArrayLayout(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/String")
    {
        std_msgs::String msg;
        read__std_msgs__String(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/Time")
    {
        std_msgs::Time msg;
        read__std_msgs__Time(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/UInt16")
    {
        std_msgs::UInt16 msg;
        read__std_msgs__UInt16(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/UInt16MultiArray")
    {
        std_msgs::UInt16MultiArray msg;
        read__std_msgs__UInt16MultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/UInt32")
    {
        std_msgs::UInt32 msg;
        read__std_msgs__UInt32(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/UInt32MultiArray")
    {
        std_msgs::UInt32MultiArray msg;
        read__std_msgs__UInt32MultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/UInt64")
    {
        std_msgs::UInt64 msg;
        read__std_msgs__UInt64(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/UInt64MultiArray")
    {
        std_msgs::UInt64MultiArray msg;
        read__std_msgs__UInt64MultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/UInt8")
    {
        std_msgs::UInt8 msg;
        read__std_msgs__UInt8(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "std_msgs/UInt8MultiArray")
    {
        std_msgs::UInt8MultiArray msg;
        read__std_msgs__UInt8MultiArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "tf/tfMessage")
    {
        tf::tfMessage msg;
        read__tf__tfMessage(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "tf2_msgs/TF2Error")
    {
        tf2_msgs::TF2Error msg;
        read__tf2_msgs__TF2Error(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "tf2_msgs/TFMessage")
    {
        tf2_msgs::TFMessage msg;
        read__tf2_msgs__TFMessage(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "trajectory_msgs/JointTrajectory")
    {
        trajectory_msgs::JointTrajectory msg;
        read__trajectory_msgs__JointTrajectory(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "trajectory_msgs/JointTrajectoryPoint")
    {
        trajectory_msgs::JointTrajectoryPoint msg;
        read__trajectory_msgs__JointTrajectoryPoint(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "trajectory_msgs/MultiDOFJointTrajectory")
    {
        trajectory_msgs::MultiDOFJointTrajectory msg;
        read__trajectory_msgs__MultiDOFJointTrajectory(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "trajectory_msgs/MultiDOFJointTrajectoryPoint")
    {
        trajectory_msgs::MultiDOFJointTrajectoryPoint msg;
        read__trajectory_msgs__MultiDOFJointTrajectoryPoint(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "visualization_msgs/ImageMarker")
    {
        visualization_msgs::ImageMarker msg;
        read__visualization_msgs__ImageMarker(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "visualization_msgs/InteractiveMarker")
    {
        visualization_msgs::InteractiveMarker msg;
        read__visualization_msgs__InteractiveMarker(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "visualization_msgs/InteractiveMarkerControl")
    {
        visualization_msgs::InteractiveMarkerControl msg;
        read__visualization_msgs__InteractiveMarkerControl(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "visualization_msgs/InteractiveMarkerFeedback")
    {
        visualization_msgs::InteractiveMarkerFeedback msg;
        read__visualization_msgs__InteractiveMarkerFeedback(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "visualization_msgs/InteractiveMarkerInit")
    {
        visualization_msgs::InteractiveMarkerInit msg;
        read__visualization_msgs__InteractiveMarkerInit(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "visualization_msgs/InteractiveMarkerPose")
    {
        visualization_msgs::InteractiveMarkerPose msg;
        read__visualization_msgs__InteractiveMarkerPose(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "visualization_msgs/InteractiveMarkerUpdate")
    {
        visualization_msgs::InteractiveMarkerUpdate msg;
        read__visualization_msgs__InteractiveMarkerUpdate(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "visualization_msgs/Marker")
    {
        visualization_msgs::Marker msg;
        read__visualization_msgs__Marker(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "visualization_msgs/MarkerArray")
    {
        visualization_msgs::MarkerArray msg;
        read__visualization_msgs__MarkerArray(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
    else if(publisherProxy->topicType == "visualization_msgs/MenuEntry")
    {
        visualization_msgs::MenuEntry msg;
        read__visualization_msgs__MenuEntry(p->stackID, &msg, &(publisherProxy->rd_opt));
        publisherProxy->publisher.publish(msg);
    }
