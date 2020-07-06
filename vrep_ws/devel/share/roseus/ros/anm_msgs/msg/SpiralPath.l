;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::SpiralPath)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'SpiralPath (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::SPIRALPATH")
  (make-package "ANM_MSGS::SPIRALPATH"))

(in-package "ROS")
;;//! \htmlinclude SpiralPath.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::SpiralPath
  :super ros::object
  :slots (_header _a _b _c _d _sf _reference_state _goal_state ))

(defmethod anm_msgs::SpiralPath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    ((:d __d) 0.0)
    ((:sf __sf) 0.0)
    ((:reference_state __reference_state) (instance anm_msgs::PathState :init))
    ((:goal_state __goal_state) (instance anm_msgs::PathState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   (setq _d (float __d))
   (setq _sf (float __sf))
   (setq _reference_state __reference_state)
   (setq _goal_state __goal_state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:sf
   (&optional __sf)
   (if __sf (setq _sf __sf)) _sf)
  (:reference_state
   (&rest __reference_state)
   (if (keywordp (car __reference_state))
       (send* _reference_state __reference_state)
     (progn
       (if __reference_state (setq _reference_state (car __reference_state)))
       _reference_state)))
  (:goal_state
   (&rest __goal_state)
   (if (keywordp (car __goal_state))
       (send* _goal_state __goal_state)
     (progn
       (if __goal_state (setq _goal_state (car __goal_state)))
       _goal_state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; float64 _c
    8
    ;; float64 _d
    8
    ;; float64 _sf
    8
    ;; anm_msgs/PathState _reference_state
    (send _reference_state :serialization-length)
    ;; anm_msgs/PathState _goal_state
    (send _goal_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c
       (sys::poke _c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d
       (sys::poke _d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sf
       (sys::poke _sf (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; anm_msgs/PathState _reference_state
       (send _reference_state :serialize s)
     ;; anm_msgs/PathState _goal_state
       (send _goal_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c
     (setq _c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d
     (setq _d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sf
     (setq _sf (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; anm_msgs/PathState _reference_state
     (send _reference_state :deserialize buf ptr-) (incf ptr- (send _reference_state :serialization-length))
   ;; anm_msgs/PathState _goal_state
     (send _goal_state :deserialize buf ptr-) (incf ptr- (send _goal_state :serialization-length))
   ;;
   self)
  )

(setf (get anm_msgs::SpiralPath :md5sum-) "cbdb9aa67633991647d7cd82b98e0d51")
(setf (get anm_msgs::SpiralPath :datatype-) "anm_msgs/SpiralPath")
(setf (get anm_msgs::SpiralPath :definition-)
      "# This message is a parametric representation of a spiral curve
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
MSG: anm_msgs/PathState
# This message defines a position along a spiral curve
#
# x = x position in global frame (meters)
# y = y position in global frame (meters)
# theta = angle of curve tangent at position x, y (radians)
# k = curvature of curve at position x, y (1/meters)
# s = length in along (meters)

float64 x
float64 y
float64 theta
float64 k
float64 s

")



(provide :anm_msgs/SpiralPath "cbdb9aa67633991647d7cd82b98e0d51")


