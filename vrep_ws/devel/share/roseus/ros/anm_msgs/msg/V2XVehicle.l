;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::V2XVehicle)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'V2XVehicle (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::V2XVEHICLE")
  (make-package "ANM_MSGS::V2XVEHICLE"))

(in-package "ROS")
;;//! \htmlinclude V2XVehicle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass anm_msgs::V2XVehicle
  :super ros::object
  :slots (_id _position _speed _yaw _is_self ))

(defmethod anm_msgs::V2XVehicle
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:speed __speed) 0.0)
    ((:yaw __yaw) 0.0)
    ((:is_self __is_self) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   (setq _speed (float __speed))
   (setq _yaw (float __yaw))
   (setq _is_self __is_self)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:is_self
   (&optional __is_self)
   (if __is_self (setq _is_self __is_self)) _is_self)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _speed
    8
    ;; float64 _yaw
    8
    ;; bool _is_self
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_self
       (if _is_self (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_self
     (setq _is_self (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get anm_msgs::V2XVehicle :md5sum-) "37f8e1d7c4cd5cf2bc765b7f1a716323")
(setf (get anm_msgs::V2XVehicle :datatype-) "anm_msgs/V2XVehicle")
(setf (get anm_msgs::V2XVehicle :definition-)
      "# Vehicle v2x custom header
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



(provide :anm_msgs/V2XVehicle "37f8e1d7c4cd5cf2bc765b7f1a716323")


