//
// Created by ljn on 19-9-24.
//

#include <iostream>
#include <ros/ros.h>
#include <sensor_msgs/PointCloud.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/point_cloud_conversion.h>

//sensor_msgs::PointCloud2 simulation_point_cloud;
bool point_cloud_rcv = false;
sensor_msgs::PointCloud point_cloud_output;

void pcl2_cb(const sensor_msgs::PointCloud2ConstPtr &point_cloud) {
//    simulation_point_cloud = *point_cloud;
    sensor_msgs::convertPointCloud2ToPointCloud(*point_cloud, point_cloud_output);
    point_cloud_rcv = true;
    printf("get pcl2 msg\n");
}

int main (int argc, char **argv) {
    ros::init(argc, argv, "pcl_conversion");
    ros::NodeHandle nh("~");
    ros::Publisher pcl_pub = nh.advertise<sensor_msgs::PointCloud>("point_cloud_topic", 1, true);
    ros::Subscriber pcl2_sub = nh.subscribe("/ros_lidar", 1, pcl2_cb);
    while (ros::ok()) {
        ros::spinOnce();
        if (point_cloud_rcv) {
            pcl_pub.publish(point_cloud_output);
            point_cloud_rcv = false;
        }
    }
}
