# This message is a parametric representation of a spiral curve
# The curve is used to define a local path
#
# a, b, c, d = parameters that define the spiral curve
# sf = total length of curve (meters)
# reference_state = current position on the curve
# goal_state = endpoint of the curve

Header header
float64 a
float64 b
float64 c
float64 d
float64 sf
PathState reference_state
PathState goal_state
