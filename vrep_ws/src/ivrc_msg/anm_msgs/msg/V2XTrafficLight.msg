# Traffic light v2x custom header
#
# id             = ID of traffic light (for traffic lights)
# position       = x y position in odom frame (meters)
# yaw            = heading in radians north of east
# effect_length  = length of the "fence line" for traffic light (meters)
# time_to_change = the time left for the light state to  change (seconds)
# light_state    = current state of the light (below has state numbers)

uint32 id
geometry_msgs/Point position
float64 yaw
float64 effect_length
float64 time_to_change

uint8 light_state
uint8 DARK = 0
uint8 GREEN = 1
uint8 YELLOW = 2
uint8 RED = 3
uint8 V2X_LIGHT_STATE_KIND_COUNT = 4
