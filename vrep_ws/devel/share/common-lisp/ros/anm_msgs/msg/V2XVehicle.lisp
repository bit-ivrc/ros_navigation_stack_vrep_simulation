; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude V2XVehicle.msg.html

(cl:defclass <V2XVehicle> (roslisp-msg-protocol:ros-message)
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
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (is_self
    :reader is_self
    :initarg :is_self
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass V2XVehicle (<V2XVehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2XVehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2XVehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<V2XVehicle> is deprecated: use anm_msgs-msg:V2XVehicle instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <V2XVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:id-val is deprecated.  Use anm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <V2XVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:position-val is deprecated.  Use anm_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <V2XVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:speed-val is deprecated.  Use anm_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <V2XVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:yaw-val is deprecated.  Use anm_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'is_self-val :lambda-list '(m))
(cl:defmethod is_self-val ((m <V2XVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:is_self-val is deprecated.  Use anm_msgs-msg:is_self instead.")
  (is_self m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2XVehicle>) ostream)
  "Serializes a message object of type '<V2XVehicle>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_self) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2XVehicle>) istream)
  "Deserializes a message object of type '<V2XVehicle>"
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
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'is_self) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2XVehicle>)))
  "Returns string type for a message object of type '<V2XVehicle>"
  "anm_msgs/V2XVehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2XVehicle)))
  "Returns string type for a message object of type 'V2XVehicle"
  "anm_msgs/V2XVehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2XVehicle>)))
  "Returns md5sum for a message object of type '<V2XVehicle>"
  "37f8e1d7c4cd5cf2bc765b7f1a716323")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2XVehicle)))
  "Returns md5sum for a message object of type 'V2XVehicle"
  "37f8e1d7c4cd5cf2bc765b7f1a716323")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2XVehicle>)))
  "Returns full string definition for message of type '<V2XVehicle>"
  (cl:format cl:nil "# Vehicle v2x custom header~%#~%# id       = ID of vehicle~%# position = x y position in odom frame (meters)~%# speed    = speed of the vehicle (meters/second)~%# yaw      = heading in radians north of east~%# self     = if this is the local vehicle, true, otherwise, false~%~%uint32 id~%geometry_msgs/Point position~%float64 speed~%float64 yaw~%bool is_self~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2XVehicle)))
  "Returns full string definition for message of type 'V2XVehicle"
  (cl:format cl:nil "# Vehicle v2x custom header~%#~%# id       = ID of vehicle~%# position = x y position in odom frame (meters)~%# speed    = speed of the vehicle (meters/second)~%# yaw      = heading in radians north of east~%# self     = if this is the local vehicle, true, otherwise, false~%~%uint32 id~%geometry_msgs/Point position~%float64 speed~%float64 yaw~%bool is_self~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2XVehicle>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2XVehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'V2XVehicle
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':is_self (is_self msg))
))
