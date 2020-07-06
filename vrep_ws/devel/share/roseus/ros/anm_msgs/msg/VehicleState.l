;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::VehicleState)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'VehicleState (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::VEHICLESTATE")
  (make-package "ANM_MSGS::VEHICLESTATE"))

(in-package "ROS")
;;//! \htmlinclude VehicleState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::VehicleState
  :super ros::object
  :slots (_header _child_frame_id _position _orientation _velocity _acceleration ))

(defmethod anm_msgs::VehicleState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:child_frame_id __child_frame_id) "")
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:orientation __orientation) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _child_frame_id (string __child_frame_id))
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:child_frame_id
   (&optional __child_frame_id)
   (if __child_frame_id (setq _child_frame_id __child_frame_id)) _child_frame_id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _child_frame_id
    4 (length _child_frame_id)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Twist _acceleration
    (send _acceleration :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _child_frame_id
       (write-long (length _child_frame_id) s) (princ _child_frame_id s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Twist _acceleration
       (send _acceleration :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _child_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Twist _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;;
   self)
  )

(setf (get anm_msgs::VehicleState :md5sum-) "83cb7fb9eb0225599d87dab7d1d7aed8")
(setf (get anm_msgs::VehicleState :datatype-) "anm_msgs/VehicleState")
(setf (get anm_msgs::VehicleState :definition-)
      "# This message describes the complete vehicle state
# orientation = orientation of the vehicle using euler angles

Header header
string child_frame_id

geometry_msgs/Point position
geometry_msgs/Vector3 orientation
geometry_msgs/Twist velocity
geometry_msgs/Twist acceleration

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :anm_msgs/VehicleState "83cb7fb9eb0225599d87dab7d1d7aed8")


