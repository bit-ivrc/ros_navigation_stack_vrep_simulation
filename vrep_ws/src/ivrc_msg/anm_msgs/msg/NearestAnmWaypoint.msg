# The nearest anm_waypoint and its current distance
# Note, the nearest anm_waypoint may be one that hasn't been reached yet

string name        # special waypoint tag
float64 distance   # distance in m
bool now_reached   # true if distance is smaller than waypoint_radius
bool last_reached  # true if this waypoint is the last to be in range
