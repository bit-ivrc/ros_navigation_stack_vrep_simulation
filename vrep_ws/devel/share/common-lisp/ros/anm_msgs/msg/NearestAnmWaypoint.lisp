; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude NearestAnmWaypoint.msg.html

(cl:defclass <NearestAnmWaypoint> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (now_reached
    :reader now_reached
    :initarg :now_reached
    :type cl:boolean
    :initform cl:nil)
   (last_reached
    :reader last_reached
    :initarg :last_reached
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NearestAnmWaypoint (<NearestAnmWaypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NearestAnmWaypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NearestAnmWaypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<NearestAnmWaypoint> is deprecated: use anm_msgs-msg:NearestAnmWaypoint instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <NearestAnmWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:name-val is deprecated.  Use anm_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <NearestAnmWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:distance-val is deprecated.  Use anm_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'now_reached-val :lambda-list '(m))
(cl:defmethod now_reached-val ((m <NearestAnmWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:now_reached-val is deprecated.  Use anm_msgs-msg:now_reached instead.")
  (now_reached m))

(cl:ensure-generic-function 'last_reached-val :lambda-list '(m))
(cl:defmethod last_reached-val ((m <NearestAnmWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:last_reached-val is deprecated.  Use anm_msgs-msg:last_reached instead.")
  (last_reached m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NearestAnmWaypoint>) ostream)
  "Serializes a message object of type '<NearestAnmWaypoint>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'now_reached) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'last_reached) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NearestAnmWaypoint>) istream)
  "Deserializes a message object of type '<NearestAnmWaypoint>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'now_reached) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'last_reached) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NearestAnmWaypoint>)))
  "Returns string type for a message object of type '<NearestAnmWaypoint>"
  "anm_msgs/NearestAnmWaypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NearestAnmWaypoint)))
  "Returns string type for a message object of type 'NearestAnmWaypoint"
  "anm_msgs/NearestAnmWaypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NearestAnmWaypoint>)))
  "Returns md5sum for a message object of type '<NearestAnmWaypoint>"
  "804fca42cf51ff9c5042032107f82370")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NearestAnmWaypoint)))
  "Returns md5sum for a message object of type 'NearestAnmWaypoint"
  "804fca42cf51ff9c5042032107f82370")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NearestAnmWaypoint>)))
  "Returns full string definition for message of type '<NearestAnmWaypoint>"
  (cl:format cl:nil "# The nearest anm_waypoint and its current distance~%# Note, the nearest anm_waypoint may be one that hasn't been reached yet~%~%string name        # special waypoint tag~%float64 distance   # distance in m~%bool now_reached   # true if distance is smaller than waypoint_radius~%bool last_reached  # true if this waypoint is the last to be in range~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NearestAnmWaypoint)))
  "Returns full string definition for message of type 'NearestAnmWaypoint"
  (cl:format cl:nil "# The nearest anm_waypoint and its current distance~%# Note, the nearest anm_waypoint may be one that hasn't been reached yet~%~%string name        # special waypoint tag~%float64 distance   # distance in m~%bool now_reached   # true if distance is smaller than waypoint_radius~%bool last_reached  # true if this waypoint is the last to be in range~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NearestAnmWaypoint>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NearestAnmWaypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'NearestAnmWaypoint
    (cl:cons ':name (name msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':now_reached (now_reached msg))
    (cl:cons ':last_reached (last_reached msg))
))
