;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::SystemState)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'SystemState (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::SYSTEMSTATE")
  (make-package "ANM_MSGS::SYSTEMSTATE"))

(in-package "ROS")
;;//! \htmlinclude SystemState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ST_OFF*" (find-package "ANM_MSGS::SYSTEMSTATE"))
(shadow '*ST_OFF* (find-package "ANM_MSGS::SYSTEMSTATE"))
(defconstant anm_msgs::SystemState::*ST_OFF* 0)
(intern "*ST_STANDBY*" (find-package "ANM_MSGS::SYSTEMSTATE"))
(shadow '*ST_STANDBY* (find-package "ANM_MSGS::SYSTEMSTATE"))
(defconstant anm_msgs::SystemState::*ST_STANDBY* 1)
(intern "*ST_NOT_READY*" (find-package "ANM_MSGS::SYSTEMSTATE"))
(shadow '*ST_NOT_READY* (find-package "ANM_MSGS::SYSTEMSTATE"))
(defconstant anm_msgs::SystemState::*ST_NOT_READY* 2)
(intern "*ST_PARKED*" (find-package "ANM_MSGS::SYSTEMSTATE"))
(shadow '*ST_PARKED* (find-package "ANM_MSGS::SYSTEMSTATE"))
(defconstant anm_msgs::SystemState::*ST_PARKED* 3)
(intern "*ST_DRIVE*" (find-package "ANM_MSGS::SYSTEMSTATE"))
(shadow '*ST_DRIVE* (find-package "ANM_MSGS::SYSTEMSTATE"))
(defconstant anm_msgs::SystemState::*ST_DRIVE* 4)
(intern "*ST_EPULLOVER*" (find-package "ANM_MSGS::SYSTEMSTATE"))
(shadow '*ST_EPULLOVER* (find-package "ANM_MSGS::SYSTEMSTATE"))
(defconstant anm_msgs::SystemState::*ST_EPULLOVER* 5)
(defclass anm_msgs::SystemState
  :super ros::object
  :slots (_header _state _envchks _syschks _navptschks ))

(defmethod anm_msgs::SystemState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    ((:envchks __envchks) 0)
    ((:syschks __syschks) 0)
    ((:navptschks __navptschks) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   (setq _envchks (round __envchks))
   (setq _syschks (round __syschks))
   (setq _navptschks (round __navptschks))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:envchks
   (&optional __envchks)
   (if __envchks (setq _envchks __envchks)) _envchks)
  (:syschks
   (&optional __syschks)
   (if __syschks (setq _syschks __syschks)) _syschks)
  (:navptschks
   (&optional __navptschks)
   (if __navptschks (setq _navptschks __navptschks)) _navptschks)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ;; uint8 _envchks
    1
    ;; uint8 _syschks
    1
    ;; uint8 _navptschks
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _state
       (write-byte _state s)
     ;; uint8 _envchks
       (write-byte _envchks s)
     ;; uint8 _syschks
       (write-byte _syschks s)
     ;; uint8 _navptschks
       (write-byte _navptschks s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _envchks
     (setq _envchks (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _syschks
     (setq _syschks (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _navptschks
     (setq _navptschks (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get anm_msgs::SystemState :md5sum-) "cbef3d6b7a4084b15097fdfe26dfc637")
(setf (get anm_msgs::SystemState :datatype-) "anm_msgs/SystemState")
(setf (get anm_msgs::SystemState :definition-)
      "# This message contains the current state of the autonomous system
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



(provide :anm_msgs/SystemState "cbef3d6b7a4084b15097fdfe26dfc637")


