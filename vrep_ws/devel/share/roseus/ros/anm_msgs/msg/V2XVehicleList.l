;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::V2XVehicleList)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'V2XVehicleList (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::V2XVEHICLELIST")
  (make-package "ANM_MSGS::V2XVEHICLELIST"))

(in-package "ROS")
;;//! \htmlinclude V2XVehicleList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::V2XVehicleList
  :super ros::object
  :slots (_header _vehicles ))

(defmethod anm_msgs::V2XVehicleList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicles __vehicles) (let (r) (dotimes (i 0) (push (instance anm_msgs::V2XVehicle :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicles __vehicles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicles
   (&rest __vehicles)
   (if (keywordp (car __vehicles))
       (send* _vehicles __vehicles)
     (progn
       (if __vehicles (setq _vehicles (car __vehicles)))
       _vehicles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; anm_msgs/V2XVehicle[] _vehicles
    (apply #'+ (send-all _vehicles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; anm_msgs/V2XVehicle[] _vehicles
     (write-long (length _vehicles) s)
     (dolist (elem _vehicles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; anm_msgs/V2XVehicle[] _vehicles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vehicles (let (r) (dotimes (i n) (push (instance anm_msgs::V2XVehicle :init) r)) r))
     (dolist (elem- _vehicles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get anm_msgs::V2XVehicleList :md5sum-) "f758b76380074c54472a3cc1598b5be7")
(setf (get anm_msgs::V2XVehicleList :datatype-) "anm_msgs/V2XVehicleList")
(setf (get anm_msgs::V2XVehicleList :definition-)
      "# List of v2x vehicles

Header header
V2XVehicle[] vehicles

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
MSG: anm_msgs/V2XVehicle
# Vehicle v2x custom header
#
# id       = ID of vehicle
# position = x y position in odom frame (meters)
# speed    = speed of the vehicle (meters/second)
# yaw      = heading in radians north of east
# self     = if this is the local vehicle, true, otherwise, false

uint32 id
geometry_msgs/Point position
float64 speed
float64 yaw
bool is_self

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :anm_msgs/V2XVehicleList "f758b76380074c54472a3cc1598b5be7")


