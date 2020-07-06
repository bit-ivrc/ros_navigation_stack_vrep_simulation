; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude SpiralPath.msg.html

(cl:defclass <SpiralPath> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0)
   (c
    :reader c
    :initarg :c
    :type cl:float
    :initform 0.0)
   (d
    :reader d
    :initarg :d
    :type cl:float
    :initform 0.0)
   (sf
    :reader sf
    :initarg :sf
    :type cl:float
    :initform 0.0)
   (reference_state
    :reader reference_state
    :initarg :reference_state
    :type anm_msgs-msg:PathState
    :initform (cl:make-instance 'anm_msgs-msg:PathState))
   (goal_state
    :reader goal_state
    :initarg :goal_state
    :type anm_msgs-msg:PathState
    :initform (cl:make-instance 'anm_msgs-msg:PathState)))
)

(cl:defclass SpiralPath (<SpiralPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpiralPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpiralPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<SpiralPath> is deprecated: use anm_msgs-msg:SpiralPath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SpiralPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <SpiralPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:a-val is deprecated.  Use anm_msgs-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <SpiralPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:b-val is deprecated.  Use anm_msgs-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <SpiralPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:c-val is deprecated.  Use anm_msgs-msg:c instead.")
  (c m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <SpiralPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:d-val is deprecated.  Use anm_msgs-msg:d instead.")
  (d m))

(cl:ensure-generic-function 'sf-val :lambda-list '(m))
(cl:defmethod sf-val ((m <SpiralPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:sf-val is deprecated.  Use anm_msgs-msg:sf instead.")
  (sf m))

(cl:ensure-generic-function 'reference_state-val :lambda-list '(m))
(cl:defmethod reference_state-val ((m <SpiralPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:reference_state-val is deprecated.  Use anm_msgs-msg:reference_state instead.")
  (reference_state m))

(cl:ensure-generic-function 'goal_state-val :lambda-list '(m))
(cl:defmethod goal_state-val ((m <SpiralPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:goal_state-val is deprecated.  Use anm_msgs-msg:goal_state instead.")
  (goal_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpiralPath>) ostream)
  "Serializes a message object of type '<SpiralPath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpiralPath>) istream)
  "Deserializes a message object of type '<SpiralPath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sf) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpiralPath>)))
  "Returns string type for a message object of type '<SpiralPath>"
  "anm_msgs/SpiralPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpiralPath)))
  "Returns string type for a message object of type 'SpiralPath"
  "anm_msgs/SpiralPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpiralPath>)))
  "Returns md5sum for a message object of type '<SpiralPath>"
  "cbdb9aa67633991647d7cd82b98e0d51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpiralPath)))
  "Returns md5sum for a message object of type 'SpiralPath"
  "cbdb9aa67633991647d7cd82b98e0d51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpiralPath>)))
  "Returns full string definition for message of type '<SpiralPath>"
  (cl:format cl:nil "# This message is a parametric representation of a spiral curve~%# The curve is used to define a local path~%#~%# a, b, c, d = parameters that define the spiral curve~%# sf = total length of curve (meters)~%# reference_state = current position on the curve~%# goal_state = endpoint of the curve~%~%Header header~%float64 a~%float64 b~%float64 c~%float64 d~%float64 sf~%PathState reference_state~%PathState goal_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/PathState~%# This message defines a position along a spiral curve~%#~%# x = x position in global frame (meters)~%# y = y position in global frame (meters)~%# theta = angle of curve tangent at position x, y (radians)~%# k = curvature of curve at position x, y (1/meters)~%# s = length in along (meters)~%~%float64 x~%float64 y~%float64 theta~%float64 k~%float64 s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpiralPath)))
  "Returns full string definition for message of type 'SpiralPath"
  (cl:format cl:nil "# This message is a parametric representation of a spiral curve~%# The curve is used to define a local path~%#~%# a, b, c, d = parameters that define the spiral curve~%# sf = total length of curve (meters)~%# reference_state = current position on the curve~%# goal_state = endpoint of the curve~%~%Header header~%float64 a~%float64 b~%float64 c~%float64 d~%float64 sf~%PathState reference_state~%PathState goal_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/PathState~%# This message defines a position along a spiral curve~%#~%# x = x position in global frame (meters)~%# y = y position in global frame (meters)~%# theta = angle of curve tangent at position x, y (radians)~%# k = curvature of curve at position x, y (1/meters)~%# s = length in along (meters)~%~%float64 x~%float64 y~%float64 theta~%float64 k~%float64 s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpiralPath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpiralPath>))
  "Converts a ROS message object to a list"
  (cl:list 'SpiralPath
    (cl:cons ':header (header msg))
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
    (cl:cons ':d (d msg))
    (cl:cons ':sf (sf msg))
    (cl:cons ':reference_state (reference_state msg))
    (cl:cons ':goal_state (goal_state msg))
))
