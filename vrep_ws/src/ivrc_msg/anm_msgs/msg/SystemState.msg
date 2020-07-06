# This message contains the current state of the autonomous system
# Detailed documentation can be found in google drive under the
# architecture/system supervisor folder

# The following constants are used to define the states
uint8 ST_OFF = 0        # in manual mode - system is off
uint8 ST_STANDBY = 1    # in manual mode - system is ready to go to auto mode
uint8 ST_NOT_READY = 2  # in manual mode - system is not ready to go auto mode
uint8 ST_PARKED = 3     # in auto mode - system is autonomously parked
uint8 ST_DRIVE = 4      # in auto mode - system is autonomously driving
uint8 ST_EPULLOVER = 5  # in auto mode - system is emergency pulling over

# Message definition
Header header
uint8 state             # the state of the system
uint8 envchks           # environment ready checks - 0 = fail, 1 = pass
uint8 syschks           # hardware/software ready checks - 0 = fail, 1 = pass
uint8 navptschks        # is there navigation points currently? 0 = no, 1 = yes

