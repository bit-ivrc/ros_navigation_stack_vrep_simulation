;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::DynamicObstacle)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'DynamicObstacle (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::DYNAMICOBSTACLE")
  (make-package "ANM_MSGS::DYNAMICOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude DynamicObstacle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass anm_msgs::DynamicObstacle
  :super ros::object
  :slots (_position _dimensions _speed _yaw ))

(defmethod anm_msgs::DynamicObstacle
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:speed __speed) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _dimensions __dimensions)
   (setq _speed (float __speed))
   (setq _yaw (float __yaw))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; float32 _speed
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get anm_msgs::DynamicObstacle :md5sum-) "3276b97597f7ee28ba720e128f1fb772")
(setf (get anm_msgs::DynamicObstacle :datatype-) "anm_msgs/DynamicObstacle")
(setf (get anm_msgs::DynamicObstacle :definition-)
      "# This message decribes the information of dynamic obstacles in odom frame 
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



(provide :anm_msgs/DynamicObstacle "3276b97597f7ee28ba720e128f1fb772")


