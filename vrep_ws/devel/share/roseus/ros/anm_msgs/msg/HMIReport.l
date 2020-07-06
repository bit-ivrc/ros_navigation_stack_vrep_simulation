;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::HMIReport)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'HMIReport (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::HMIREPORT")
  (make-package "ANM_MSGS::HMIREPORT"))

(in-package "ROS")
;;//! \htmlinclude HMIReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::HMIReport
  :super ros::object
  :slots (_header _auto_toggle_pressed _manual_estop_pressed _auto_engage_pressed _auto_disengage_pressed _environment_checks_pressed _system_checks_pressed _emergency_pullover_exit_pressed _manual_drive_pressed _gear_change_pressed _auto_toggle _manual_estop _environment_checks _system_checks _emergency_pullover_exit _gear_setting ))

(defmethod anm_msgs::HMIReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:auto_toggle_pressed __auto_toggle_pressed) 0)
    ((:manual_estop_pressed __manual_estop_pressed) 0)
    ((:auto_engage_pressed __auto_engage_pressed) 0)
    ((:auto_disengage_pressed __auto_disengage_pressed) 0)
    ((:environment_checks_pressed __environment_checks_pressed) 0)
    ((:system_checks_pressed __system_checks_pressed) 0)
    ((:emergency_pullover_exit_pressed __emergency_pullover_exit_pressed) 0)
    ((:manual_drive_pressed __manual_drive_pressed) 0)
    ((:gear_change_pressed __gear_change_pressed) 0)
    ((:auto_toggle __auto_toggle) 0)
    ((:manual_estop __manual_estop) 0)
    ((:environment_checks __environment_checks) 0)
    ((:system_checks __system_checks) 0)
    ((:emergency_pullover_exit __emergency_pullover_exit) 0)
    ((:gear_setting __gear_setting) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _auto_toggle_pressed (round __auto_toggle_pressed))
   (setq _manual_estop_pressed (round __manual_estop_pressed))
   (setq _auto_engage_pressed (round __auto_engage_pressed))
   (setq _auto_disengage_pressed (round __auto_disengage_pressed))
   (setq _environment_checks_pressed (round __environment_checks_pressed))
   (setq _system_checks_pressed (round __system_checks_pressed))
   (setq _emergency_pullover_exit_pressed (round __emergency_pullover_exit_pressed))
   (setq _manual_drive_pressed (round __manual_drive_pressed))
   (setq _gear_change_pressed (round __gear_change_pressed))
   (setq _auto_toggle (round __auto_toggle))
   (setq _manual_estop (round __manual_estop))
   (setq _environment_checks (round __environment_checks))
   (setq _system_checks (round __system_checks))
   (setq _emergency_pullover_exit (round __emergency_pullover_exit))
   (setq _gear_setting (round __gear_setting))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:auto_toggle_pressed
   (&optional __auto_toggle_pressed)
   (if __auto_toggle_pressed (setq _auto_toggle_pressed __auto_toggle_pressed)) _auto_toggle_pressed)
  (:manual_estop_pressed
   (&optional __manual_estop_pressed)
   (if __manual_estop_pressed (setq _manual_estop_pressed __manual_estop_pressed)) _manual_estop_pressed)
  (:auto_engage_pressed
   (&optional __auto_engage_pressed)
   (if __auto_engage_pressed (setq _auto_engage_pressed __auto_engage_pressed)) _auto_engage_pressed)
  (:auto_disengage_pressed
   (&optional __auto_disengage_pressed)
   (if __auto_disengage_pressed (setq _auto_disengage_pressed __auto_disengage_pressed)) _auto_disengage_pressed)
  (:environment_checks_pressed
   (&optional __environment_checks_pressed)
   (if __environment_checks_pressed (setq _environment_checks_pressed __environment_checks_pressed)) _environment_checks_pressed)
  (:system_checks_pressed
   (&optional __system_checks_pressed)
   (if __system_checks_pressed (setq _system_checks_pressed __system_checks_pressed)) _system_checks_pressed)
  (:emergency_pullover_exit_pressed
   (&optional __emergency_pullover_exit_pressed)
   (if __emergency_pullover_exit_pressed (setq _emergency_pullover_exit_pressed __emergency_pullover_exit_pressed)) _emergency_pullover_exit_pressed)
  (:manual_drive_pressed
   (&optional __manual_drive_pressed)
   (if __manual_drive_pressed (setq _manual_drive_pressed __manual_drive_pressed)) _manual_drive_pressed)
  (:gear_change_pressed
   (&optional __gear_change_pressed)
   (if __gear_change_pressed (setq _gear_change_pressed __gear_change_pressed)) _gear_change_pressed)
  (:auto_toggle
   (&optional __auto_toggle)
   (if __auto_toggle (setq _auto_toggle __auto_toggle)) _auto_toggle)
  (:manual_estop
   (&optional __manual_estop)
   (if __manual_estop (setq _manual_estop __manual_estop)) _manual_estop)
  (:environment_checks
   (&optional __environment_checks)
   (if __environment_checks (setq _environment_checks __environment_checks)) _environment_checks)
  (:system_checks
   (&optional __system_checks)
   (if __system_checks (setq _system_checks __system_checks)) _system_checks)
  (:emergency_pullover_exit
   (&optional __emergency_pullover_exit)
   (if __emergency_pullover_exit (setq _emergency_pullover_exit __emergency_pullover_exit)) _emergency_pullover_exit)
  (:gear_setting
   (&optional __gear_setting)
   (if __gear_setting (setq _gear_setting __gear_setting)) _gear_setting)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _auto_toggle_pressed
    1
    ;; uint8 _manual_estop_pressed
    1
    ;; uint8 _auto_engage_pressed
    1
    ;; uint8 _auto_disengage_pressed
    1
    ;; uint8 _environment_checks_pressed
    1
    ;; uint8 _system_checks_pressed
    1
    ;; uint8 _emergency_pullover_exit_pressed
    1
    ;; uint8 _manual_drive_pressed
    1
    ;; uint8 _gear_change_pressed
    1
    ;; uint8 _auto_toggle
    1
    ;; uint8 _manual_estop
    1
    ;; uint8 _environment_checks
    1
    ;; uint8 _system_checks
    1
    ;; uint8 _emergency_pullover_exit
    1
    ;; uint8 _gear_setting
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _auto_toggle_pressed
       (write-byte _auto_toggle_pressed s)
     ;; uint8 _manual_estop_pressed
       (write-byte _manual_estop_pressed s)
     ;; uint8 _auto_engage_pressed
       (write-byte _auto_engage_pressed s)
     ;; uint8 _auto_disengage_pressed
       (write-byte _auto_disengage_pressed s)
     ;; uint8 _environment_checks_pressed
       (write-byte _environment_checks_pressed s)
     ;; uint8 _system_checks_pressed
       (write-byte _system_checks_pressed s)
     ;; uint8 _emergency_pullover_exit_pressed
       (write-byte _emergency_pullover_exit_pressed s)
     ;; uint8 _manual_drive_pressed
       (write-byte _manual_drive_pressed s)
     ;; uint8 _gear_change_pressed
       (write-byte _gear_change_pressed s)
     ;; uint8 _auto_toggle
       (write-byte _auto_toggle s)
     ;; uint8 _manual_estop
       (write-byte _manual_estop s)
     ;; uint8 _environment_checks
       (write-byte _environment_checks s)
     ;; uint8 _system_checks
       (write-byte _system_checks s)
     ;; uint8 _emergency_pullover_exit
       (write-byte _emergency_pullover_exit s)
     ;; uint8 _gear_setting
       (write-byte _gear_setting s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _auto_toggle_pressed
     (setq _auto_toggle_pressed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _manual_estop_pressed
     (setq _manual_estop_pressed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _auto_engage_pressed
     (setq _auto_engage_pressed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _auto_disengage_pressed
     (setq _auto_disengage_pressed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _environment_checks_pressed
     (setq _environment_checks_pressed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _system_checks_pressed
     (setq _system_checks_pressed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _emergency_pullover_exit_pressed
     (setq _emergency_pullover_exit_pressed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _manual_drive_pressed
     (setq _manual_drive_pressed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gear_change_pressed
     (setq _gear_change_pressed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _auto_toggle
     (setq _auto_toggle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _manual_estop
     (setq _manual_estop (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _environment_checks
     (setq _environment_checks (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _system_checks
     (setq _system_checks (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _emergency_pullover_exit
     (setq _emergency_pullover_exit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gear_setting
     (setq _gear_setting (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get anm_msgs::HMIReport :md5sum-) "515b6d3b9f37b3178d08258bc23fa8f9")
(setf (get anm_msgs::HMIReport :datatype-) "anm_msgs/HMIReport")
(setf (get anm_msgs::HMIReport :definition-)
      "# This message indicates input changes on the HMI
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


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :anm_msgs/HMIReport "515b6d3b9f37b3178d08258bc23fa8f9")


