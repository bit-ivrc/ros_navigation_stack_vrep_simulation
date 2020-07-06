;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::DynamicObstacleList)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'DynamicObstacleList (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::DYNAMICOBSTACLELIST")
  (make-package "ANM_MSGS::DYNAMICOBSTACLELIST"))

(in-package "ROS")
;;//! \htmlinclude DynamicObstacleList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::DynamicObstacleList
  :super ros::object
  :slots (_header _obstacles ))

(defmethod anm_msgs::DynamicObstacleList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance anm_msgs::DynamicObstacle :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _obstacles __obstacles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; anm_msgs/DynamicObstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; anm_msgs/DynamicObstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; anm_msgs/DynamicObstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance anm_msgs::DynamicObstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get anm_msgs::DynamicObstacleList :md5sum-) "3435c2c322edb674d240f51d9feb64aa")
(setf (get anm_msgs::DynamicObstacleList :datatype-) "anm_msgs/DynamicObstacleList")
(setf (get anm_msgs::DynamicObstacleList :definition-)
      "# Dynamic obstacle list custom message 
Header header
anm_msgs/DynamicObstacle[] obstacles


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
MSG: anm_msgs/DynamicObstacle
# This message decribes the information of dynamic obstacles in odom frame 
# position       =  The recent position of the dynamic obstacle(centroid of the object)
# dimensions     =  The bounding box size:  length(along heading direction), width and height 
# speed          =  The speed of the car along the heading direction.
# yaw            =  The recent heading of the car.  

geometry_msgs/Point position
geometry_msgs/Vector3 dimensions   # length width and height
float32 speed
float32 yaw 


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
")



(provide :anm_msgs/DynamicObstacleList "3435c2c322edb674d240f51d9feb64aa")


