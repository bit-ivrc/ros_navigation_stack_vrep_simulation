# This message decribes the information of dynamic obstacles in odom frame 
# position       =  The recent position of the dynamic obstacle(centroid of the object)
# dimensions     =  The bounding box size:  length(along heading direction), width and height 
# speed          =  The speed of the car along the heading direction.
# yaw            =  The recent heading of the car.  

geometry_msgs/Point position
geometry_msgs/Vector3 dimensions   # length width and height
float32 speed
float32 yaw 

