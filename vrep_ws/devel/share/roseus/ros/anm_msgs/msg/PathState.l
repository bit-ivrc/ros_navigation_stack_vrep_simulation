;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::PathState)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'PathState (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::PATHSTATE")
  (make-package "ANM_MSGS::PATHSTATE"))

(in-package "ROS")
;;//! \htmlinclude PathState.msg.html


(defclass anm_msgs::PathState
  :super ros::object
  :slots (_x _y _theta _k _s ))

(defmethod anm_msgs::PathState
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:k __k) 0.0)
    ((:s __s) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _k (float __k))
   (setq _s (float __s))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:k
   (&optional __k)
   (if __k (setq _k __k)) _k)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ;; float64 _k
    8
    ;; float64 _s
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k
       (sys::poke _k (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k
     (setq _k (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get anm_msgs::PathState :md5sum-) "9f01869787c5fbeca1214c9d0f162135")
(setf (get anm_msgs::PathState :datatype-) "anm_msgs/PathState")
(setf (get anm_msgs::PathState :definition-)
      "# This message defines a position along a spiral curve
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



(provide :anm_msgs/PathState "9f01869787c5fbeca1214c9d0f162135")


