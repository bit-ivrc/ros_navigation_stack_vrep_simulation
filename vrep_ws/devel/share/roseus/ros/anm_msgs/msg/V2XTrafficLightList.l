;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::V2XTrafficLightList)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'V2XTrafficLightList (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::V2XTRAFFICLIGHTLIST")
  (make-package "ANM_MSGS::V2XTRAFFICLIGHTLIST"))

(in-package "ROS")
;;//! \htmlinclude V2XTrafficLightList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::V2XTrafficLightList
  :super ros::object
  :slots (_header _traffic_lights ))

(defmethod anm_msgs::V2XTrafficLightList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:traffic_lights __traffic_lights) (let (r) (dotimes (i 0) (push (instance anm_msgs::V2XTrafficLight :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _traffic_lights __traffic_lights)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:traffic_lights
   (&rest __traffic_lights)
   (if (keywordp (car __traffic_lights))
       (send* _traffic_lights __traffic_lights)
     (progn
       (if __traffic_lights (setq _traffic_lights (car __traffic_lights)))
       _traffic_lights)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; anm_msgs/V2XTrafficLight[] _traffic_lights
    (apply #'+ (send-all _traffic_lights :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; anm_msgs/V2XTrafficLight[] _traffic_lights
     (write-long (length _traffic_lights) s)
     (dolist (elem _traffic_lights)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; anm_msgs/V2XTrafficLight[] _traffic_lights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_lights (let (r) (dotimes (i n) (push (instance anm_msgs::V2XTrafficLight :init) r)) r))
     (dolist (elem- _traffic_lights)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get anm_msgs::V2XTrafficLightList :md5sum-) "3380c76e7b58f862b1077024369633ff")
(setf (get anm_msgs::V2XTrafficLightList :datatype-) "anm_msgs/V2XTrafficLightList")
(setf (get anm_msgs::V2XTrafficLightList :definition-)
      "# List of v2x traffic lights

Header header
V2XTrafficLight[] traffic_lights

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

================================================================================
MSG: anm_msgs/V2XTrafficLight
# Traffic light v2x custom header
#
# id             = ID of traffic light (for traffic lights)
# position       = x y position in odom frame (meters)
# yaw            = heading in radians north of east
# effect_length  = length of the \"fence line\" for traffic light (meters)
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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :anm_msgs/V2XTrafficLightList "3380c76e7b58f862b1077024369633ff")


