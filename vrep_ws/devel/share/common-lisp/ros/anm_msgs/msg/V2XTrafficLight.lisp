; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude V2XTrafficLight.msg.html

(cl:defclass <V2XTrafficLight> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (effect_length
    :reader effect_length
    :initarg :effect_length
    :type cl:float
    :initform 0.0)
   (time_to_change
    :reader time_to_change
    :initarg :time_to_change
    :type cl:float
    :initform 0.0)
   (light_state
    :reader light_state
    :initarg :light_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass V2XTrafficLight (<V2XTrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2XTrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2XTrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<V2XTrafficLight> is deprecated: use anm_msgs-msg:V2XTrafficLight instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <V2XTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:id-val is deprecated.  Use anm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <V2XTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:position-val is deprecated.  Use anm_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <V2XTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:yaw-val is deprecated.  Use anm_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'effect_length-val :lambda-list '(m))
(cl:defmethod effect_length-val ((m <V2XTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:effect_length-val is deprecated.  Use anm_msgs-msg:effect_length instead.")
  (effect_length m))

(cl:ensure-generic-function 'time_to_change-val :lambda-list '(m))
(cl:defmethod time_to_change-val ((m <V2XTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:time_to_change-val is deprecated.  Use anm_msgs-msg:time_to_change instead.")
  (time_to_change m))

(cl:ensure-generic-function 'light_state-val :lambda-list '(m))
(cl:defmethod light_state-val ((m <V2XTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:light_state-val is deprecated.  Use anm_msgs-msg:light_state instead.")
  (light_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<V2XTrafficLight>)))
    "Constants for message type '<V2XTrafficLight>"
  '((:DARK . 0)
    (:GREEN . 1)
    (:YELLOW . 2)
    (:RED . 3)
    (:V2X_LIGHT_STATE_KIND_COUNT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'V2XTrafficLight)))
    "Constants for message type 'V2XTrafficLight"
  '((:DARK . 0)
    (:GREEN . 1)
    (:YELLOW . 2)
    (:RED . 3)
    (:V2X_LIGHT_STATE_KIND_COUNT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2XTrafficLight>) ostream)
  "Serializes a message object of type '<V2XTrafficLight>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'effect_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_to_change))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2XTrafficLight>) istream)
  "Deserializes a message object of type '<V2XTrafficLight>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'effect_length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_to_change) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2XTrafficLight>)))
  "Returns string type for a message object of type '<V2XTrafficLight>"
  "anm_msgs/V2XTrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2XTrafficLight)))
  "Returns string type for a message object of type 'V2XTrafficLight"
  "anm_msgs/V2XTrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2XTrafficLight>)))
  "Returns md5sum for a message object of type '<V2XTrafficLight>"
  "c63ccb831497f2fd06b1f8852c656d2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2XTrafficLight)))
  "Returns md5sum for a message object of type 'V2XTrafficLight"
  "c63ccb831497f2fd06b1f8852c656d2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2XTrafficLight>)))
  "Returns full string definition for message of type '<V2XTrafficLight>"
  (cl:format cl:nil "# Traffic light v2x custom header~%#~%# id             = ID of traffic light (for traffic lights)~%# position       = x y position in odom frame (meters)~%# yaw            = heading in radians north of east~%# effect_length  = length of the \"fence line\" for traffic light (meters)~%# time_to_change = the time left for the light state to  change (seconds)~%# light_state    = current state of the light (below has state numbers)~%~%uint32 id~%geometry_msgs/Point position~%float64 yaw~%float64 effect_length~%float64 time_to_change~%~%uint8 light_state~%uint8 DARK = 0~%uint8 GREEN = 1~%uint8 YELLOW = 2~%uint8 RED = 3~%uint8 V2X_LIGHT_STATE_KIND_COUNT = 4~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2XTrafficLight)))
  "Returns full string definition for message of type 'V2XTrafficLight"
  (cl:format cl:nil "# Traffic light v2x custom header~%#~%# id             = ID of traffic light (for traffic lights)~%# position       = x y position in odom frame (meters)~%# yaw            = heading in radians north of east~%# effect_length  = length of the \"fence line\" for traffic light (meters)~%# time_to_change = the time left for the light state to  change (seconds)~%# light_state    = current state of the light (below has state numbers)~%~%uint32 id~%geometry_msgs/Point position~%float64 yaw~%float64 effect_length~%float64 time_to_change~%~%uint8 light_state~%uint8 DARK = 0~%uint8 GREEN = 1~%uint8 YELLOW = 2~%uint8 RED = 3~%uint8 V2X_LIGHT_STATE_KIND_COUNT = 4~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2XTrafficLight>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2XTrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'V2XTrafficLight
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':effect_length (effect_length msg))
    (cl:cons ':time_to_change (time_to_change msg))
    (cl:cons ':light_state (light_state msg))
))
