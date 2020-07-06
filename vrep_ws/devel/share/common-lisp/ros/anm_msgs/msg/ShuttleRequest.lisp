; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude ShuttleRequest.msg.html

(cl:defclass <ShuttleRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pickup_waypoint
    :reader pickup_waypoint
    :initarg :pickup_waypoint
    :type cl:string
    :initform "")
   (dropoff_waypoint
    :reader dropoff_waypoint
    :initarg :dropoff_waypoint
    :type cl:string
    :initform ""))
)

(cl:defclass ShuttleRequest (<ShuttleRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShuttleRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShuttleRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<ShuttleRequest> is deprecated: use anm_msgs-msg:ShuttleRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ShuttleRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pickup_waypoint-val :lambda-list '(m))
(cl:defmethod pickup_waypoint-val ((m <ShuttleRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:pickup_waypoint-val is deprecated.  Use anm_msgs-msg:pickup_waypoint instead.")
  (pickup_waypoint m))

(cl:ensure-generic-function 'dropoff_waypoint-val :lambda-list '(m))
(cl:defmethod dropoff_waypoint-val ((m <ShuttleRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:dropoff_waypoint-val is deprecated.  Use anm_msgs-msg:dropoff_waypoint instead.")
  (dropoff_waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShuttleRequest>) ostream)
  "Serializes a message object of type '<ShuttleRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pickup_waypoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pickup_waypoint))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dropoff_waypoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dropoff_waypoint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShuttleRequest>) istream)
  "Deserializes a message object of type '<ShuttleRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pickup_waypoint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pickup_waypoint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dropoff_waypoint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dropoff_waypoint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShuttleRequest>)))
  "Returns string type for a message object of type '<ShuttleRequest>"
  "anm_msgs/ShuttleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShuttleRequest)))
  "Returns string type for a message object of type 'ShuttleRequest"
  "anm_msgs/ShuttleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShuttleRequest>)))
  "Returns md5sum for a message object of type '<ShuttleRequest>"
  "01e5c9d9c3c1b369563b3402a45ec191")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShuttleRequest)))
  "Returns md5sum for a message object of type 'ShuttleRequest"
  "01e5c9d9c3c1b369563b3402a45ec191")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShuttleRequest>)))
  "Returns full string definition for message of type '<ShuttleRequest>"
  (cl:format cl:nil "# Pickup and dropoff locations for shuttle demo~%~%Header header~%string pickup_waypoint     # name of pickup anm_waypoint~%string dropoff_waypoint    # name of dropoff anm_waypoint~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShuttleRequest)))
  "Returns full string definition for message of type 'ShuttleRequest"
  (cl:format cl:nil "# Pickup and dropoff locations for shuttle demo~%~%Header header~%string pickup_waypoint     # name of pickup anm_waypoint~%string dropoff_waypoint    # name of dropoff anm_waypoint~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShuttleRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'pickup_waypoint))
     4 (cl:length (cl:slot-value msg 'dropoff_waypoint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShuttleRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'ShuttleRequest
    (cl:cons ':header (header msg))
    (cl:cons ':pickup_waypoint (pickup_waypoint msg))
    (cl:cons ':dropoff_waypoint (dropoff_waypoint msg))
))
