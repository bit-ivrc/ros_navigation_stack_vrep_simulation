;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::V2XTrafficLight)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'V2XTrafficLight (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::V2XTRAFFICLIGHT")
  (make-package "ANM_MSGS::V2XTRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude V2XTrafficLight.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*DARK*" (find-package "ANM_MSGS::V2XTRAFFICLIGHT"))
(shadow '*DARK* (find-package "ANM_MSGS::V2XTRAFFICLIGHT"))
(defconstant anm_msgs::V2XTrafficLight::*DARK* 0)
(intern "*GREEN*" (find-package "ANM_MSGS::V2XTRAFFICLIGHT"))
(shadow '*GREEN* (find-package "ANM_MSGS::V2XTRAFFICLIGHT"))
(defconstant anm_msgs::V2XTrafficLight::*GREEN* 1)
(intern "*YELLOW*" (find-package "ANM_MSGS::V2XTRAFFICLIGHT"))
(shadow '*YELLOW* (find-package "ANM_MSGS::V2XTRAFFICLIGHT"))
(defconstant anm_msgs::V2XTrafficLight::*YELLOW* 2)
(intern "*RED*" (find-package "ANM_MSGS::V2XTRAFFICLIGHT"))
(shadow '*RED* (find-package "ANM_MSGS::V2XTRAFFICLIGHT"))
(defconstant anm_msgs::V2XTrafficLight::*RED* 3)
(intern "*V2X_LIGHT_STATE_KIND_COUNT*" (find-package "ANM_MSGS::V2XTRAFFICLIGHT"))
(shadow '*V2X_LIGHT_STATE_KIND_COUNT* (find-package "ANM_MSGS::V2XTRAFFICLIGHT"))
(defconstant anm_msgs::V2XTrafficLight::*V2X_LIGHT_STATE_KIND_COUNT* 4)
(defclass anm_msgs::V2XTrafficLight
  :super ros::object
  :slots (_id _position _yaw _effect_length _time_to_change _light_state ))

(defmethod anm_msgs::V2XTrafficLight
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:yaw __yaw) 0.0)
    ((:effect_length __effect_length) 0.0)
    ((:time_to_change __time_to_change) 0.0)
    ((:light_state __light_state) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   (setq _yaw (float __yaw))
   (setq _effect_length (float __effect_length))
   (setq _time_to_change (float __time_to_change))
   (setq _light_state (round __light_state))
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
  (:time_to_change
   (&optional __time_to_change)
   (if __time_to_change (setq _time_to_change __time_to_change)) _time_to_change)
  (:light_state
   (&optional __light_state)
   (if __light_state (setq _light_state __light_state)) _light_state)
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
    ;; float64 _time_to_change
    8
    ;; uint8 _light_state
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
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _effect_length
       (sys::poke _effect_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time_to_change
       (sys::poke _time_to_change (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _light_state
       (write-byte _light_state s)
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
   ;; float64 _time_to_change
     (setq _time_to_change (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _light_state
     (setq _light_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get anm_msgs::V2XTrafficLight :md5sum-) "c63ccb831497f2fd06b1f8852c656d2f")
(setf (get anm_msgs::V2XTrafficLight :datatype-) "anm_msgs/V2XTrafficLight")
(setf (get anm_msgs::V2XTrafficLight :definition-)
      "# Traffic light v2x custom header
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



(provide :anm_msgs/V2XTrafficLight "c63ccb831497f2fd06b1f8852c656d2f")


