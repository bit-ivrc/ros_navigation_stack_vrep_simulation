# This message indicates input changes on the HMI
# Any field with an '_pressed' at the end is a button update (1 = update, 0 = not)
# Any field after with a 1 means PASS/ON/SET, and 0 means FAIIL/OFF/UNSET (except gear change)
# For gear change, 0=park, 1=drive, 2=reverse, 3=neutral, 4=low

Header header
uint8 auto_toggle_pressed
uint8 manual_estop_pressed
uint8 auto_engage_pressed
uint8 auto_disengage_pressed
uint8 environment_checks_pressed
uint8 system_checks_pressed
uint8 emergency_pullover_exit_pressed
uint8 manual_drive_pressed
uint8 gear_change_pressed
uint8 auto_toggle
uint8 manual_estop
uint8 environment_checks
uint8 system_checks
uint8 emergency_pullover_exit
uint8 gear_setting

