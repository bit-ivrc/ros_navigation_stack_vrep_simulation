# Stop sign custom header
#
# id            = ID of stop sign (for multiple stop signs)
# position      = x y position in odom frame (meters)
# yaw           = heading in radians north of east
# effect_length = length of the "fence line" for stop sign (meters)

uint32 id
geometry_msgs/Point position
float64 yaw
float64 effect_length
