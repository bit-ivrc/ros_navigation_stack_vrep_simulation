; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude V2XStopSignList.msg.html

(cl:defclass <V2XStopSignList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stopsigns
    :reader stopsigns
    :initarg :stopsigns
    :type (cl:vector anm_msgs-msg:V2XStopSign)
   :initform (cl:make-array 0 :element-type 'anm_msgs-msg:V2XStopSign :initial-element (cl:make-instance 'anm_msgs-msg:V2XStopSign))))
)

(cl:defclass V2XStopSignList (<V2XStopSignList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2XStopSignList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2XStopSignList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<V2XStopSignList> is deprecated: use anm_msgs-msg:V2XStopSignList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <V2XStopSignList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'stopsigns-val :lambda-list '(m))
(cl:defmethod stopsigns-val ((m <V2XStopSignList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:stopsigns-val is deprecated.  Use anm_msgs-msg:stopsigns instead.")
  (stopsigns m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2XStopSignList>) ostream)
  "Serializes a message object of type '<V2XStopSignList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stopsigns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stopsigns))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2XStopSignList>) istream)
  "Deserializes a message object of type '<V2XStopSignList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stopsigns) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stopsigns)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'anm_msgs-msg:V2XStopSign))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2XStopSignList>)))
  "Returns string type for a message object of type '<V2XStopSignList>"
  "anm_msgs/V2XStopSignList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2XStopSignList)))
  "Returns string type for a message object of type 'V2XStopSignList"
  "anm_msgs/V2XStopSignList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2XStopSignList>)))
  "Returns md5sum for a message object of type '<V2XStopSignList>"
  "0ffc5debd5ad0e18ac34e3976054c283")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2XStopSignList)))
  "Returns md5sum for a message object of type 'V2XStopSignList"
  "0ffc5debd5ad0e18ac34e3976054c283")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2XStopSignList>)))
  "Returns full string definition for message of type '<V2XStopSignList>"
  (cl:format cl:nil "# List of v2x stop signs~%~%Header header~%V2XStopSign[] stopsigns~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/V2XStopSign~%# Stop sign custom header~%#~%# id            = ID of stop sign (for multiple stop signs)~%# position      = x y position in odom frame (meters)~%# yaw           = heading in radians north of east~%# effect_length = length of the \"fence line\" for stop sign (meters)~%~%uint32 id~%geometry_msgs/Point position~%float64 yaw~%float64 effect_length~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2XStopSignList)))
  "Returns full string definition for message of type 'V2XStopSignList"
  (cl:format cl:nil "# List of v2x stop signs~%~%Header header~%V2XStopSign[] stopsigns~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/V2XStopSign~%# Stop sign custom header~%#~%# id            = ID of stop sign (for multiple stop signs)~%# position      = x y position in odom frame (meters)~%# yaw           = heading in radians north of east~%# effect_length = length of the \"fence line\" for stop sign (meters)~%~%uint32 id~%geometry_msgs/Point position~%float64 yaw~%float64 effect_length~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2XStopSignList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stopsigns) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2XStopSignList>))
  "Converts a ROS message object to a list"
  (cl:list 'V2XStopSignList
    (cl:cons ':header (header msg))
    (cl:cons ':stopsigns (stopsigns msg))
))
