# Vehicle v2x custom header
#
# id       = ID of vehicle
# position = x y position in odom frame (meters)
# speed    = speed of the vehicle (meters/second)
# yaw      = heading in radians north of east
# self     = if this is the local vehicle, true, otherwise, false

uint32 id
geometry_msgs/Point position
float64 speed
float64 yaw
bool is_self
