;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::V2XStopSignList)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'V2XStopSignList (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::V2XSTOPSIGNLIST")
  (make-package "ANM_MSGS::V2XSTOPSIGNLIST"))

(in-package "ROS")
;;//! \htmlinclude V2XStopSignList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::V2XStopSignList
  :super ros::object
  :slots (_header _stopsigns ))

(defmethod anm_msgs::V2XStopSignList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stopsigns __stopsigns) (let (r) (dotimes (i 0) (push (instance anm_msgs::V2XStopSign :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _stopsigns __stopsigns)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stopsigns
   (&rest __stopsigns)
   (if (keywordp (car __stopsigns))
       (send* _stopsigns __stopsigns)
     (progn
       (if __stopsigns (setq _stopsigns (car __stopsigns)))
       _stopsigns)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; anm_msgs/V2XStopSign[] _stopsigns
    (apply #'+ (send-all _stopsigns :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; anm_msgs/V2XStopSign[] _stopsigns
     (write-long (length _stopsigns) s)
     (dolist (elem _stopsigns)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; anm_msgs/V2XStopSign[] _stopsigns
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stopsigns (let (r) (dotimes (i n) (push (instance anm_msgs::V2XStopSign :init) r)) r))
     (dolist (elem- _stopsigns)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get anm_msgs::V2XStopSignList :md5sum-) "0ffc5debd5ad0e18ac34e3976054c283")
(setf (get anm_msgs::V2XStopSignList :datatype-) "anm_msgs/V2XStopSignList")
(setf (get anm_msgs::V2XStopSignList :definition-)
      "# List of v2x stop signs

Header header
V2XStopSign[] stopsigns

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
MSG: anm_msgs/V2XStopSign
# Stop sign custom header
#
# id            = ID of stop sign (for multiple stop signs)
# position      = x y position in odom frame (meters)
# yaw           = heading in radians north of east
# effect_length = length of the \"fence line\" for stop sign (meters)

uint32 id
geometry_msgs/Point position
float64 yaw
float64 effect_length

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :anm_msgs/V2XStopSignList "0ffc5debd5ad0e18ac34e3976054c283")


