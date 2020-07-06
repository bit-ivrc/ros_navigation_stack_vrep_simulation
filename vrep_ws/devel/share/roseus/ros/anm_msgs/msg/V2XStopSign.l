;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::V2XStopSign)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'V2XStopSign (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::V2XSTOPSIGN")
  (make-package "ANM_MSGS::V2XSTOPSIGN"))

(in-package "ROS")
;;//! \htmlinclude V2XStopSign.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass anm_msgs::V2XStopSign
  :super ros::object
  :slots (_id _position _yaw _effect_length ))

(defmethod anm_msgs::V2XStopSign
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:yaw __yaw) 0.0)
    ((:effect_length __effect_length) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   (setq _yaw (float __yaw))
   (setq _effect_length (float __effect_length))
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
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:effect_length
   (&optional __effect_length)
   (if __effect_length (setq _effect_length __effect_length)) _effect_length)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _yaw
    8
    ;; float64 _effect_length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _effect_length
       (sys::poke _effect_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _effect_length
     (setq _effect_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get anm_msgs::V2XStopSign :md5sum-) "72f27a0ddc174ecc9ec3a9297776ac86")
(setf (get anm_msgs::V2XStopSign :datatype-) "anm_msgs/V2XStopSign")
(setf (get anm_msgs::V2XStopSign :definition-)
      "# Stop sign custom header
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



(provide :anm_msgs/V2XStopSign "72f27a0ddc174ecc9ec3a9297776ac86")


