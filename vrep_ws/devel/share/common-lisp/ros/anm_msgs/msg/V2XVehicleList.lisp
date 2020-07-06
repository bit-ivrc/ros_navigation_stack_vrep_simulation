; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude V2XVehicleList.msg.html

(cl:defclass <V2XVehicleList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicles
    :reader vehicles
    :initarg :vehicles
    :type (cl:vector anm_msgs-msg:V2XVehicle)
   :initform (cl:make-array 0 :element-type 'anm_msgs-msg:V2XVehicle :initial-element (cl:make-instance 'anm_msgs-msg:V2XVehicle))))
)

(cl:defclass V2XVehicleList (<V2XVehicleList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2XVehicleList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2XVehicleList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<V2XVehicleList> is deprecated: use anm_msgs-msg:V2XVehicleList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <V2XVehicleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicles-val :lambda-list '(m))
(cl:defmethod vehicles-val ((m <V2XVehicleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:vehicles-val is deprecated.  Use anm_msgs-msg:vehicles instead.")
  (vehicles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2XVehicleList>) ostream)
  "Serializes a message object of type '<V2XVehicleList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2XVehicleList>) istream)
  "Deserializes a message object of type '<V2XVehicleList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehicles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehicles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'anm_msgs-msg:V2XVehicle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2XVehicleList>)))
  "Returns string type for a message object of type '<V2XVehicleList>"
  "anm_msgs/V2XVehicleList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2XVehicleList)))
  "Returns string type for a message object of type 'V2XVehicleList"
  "anm_msgs/V2XVehicleList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2XVehicleList>)))
  "Returns md5sum for a message object of type '<V2XVehicleList>"
  "f758b76380074c54472a3cc1598b5be7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2XVehicleList)))
  "Returns md5sum for a message object of type 'V2XVehicleList"
  "f758b76380074c54472a3cc1598b5be7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2XVehicleList>)))
  "Returns full string definition for message of type '<V2XVehicleList>"
  (cl:format cl:nil "# List of v2x vehicles~%~%Header header~%V2XVehicle[] vehicles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/V2XVehicle~%# Vehicle v2x custom header~%#~%# id       = ID of vehicle~%# position = x y position in odom frame (meters)~%# speed    = speed of the vehicle (meters/second)~%# yaw      = heading in radians north of east~%# self     = if this is the local vehicle, true, otherwise, false~%~%uint32 id~%geometry_msgs/Point position~%float64 speed~%float64 yaw~%bool is_self~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2XVehicleList)))
  "Returns full string definition for message of type 'V2XVehicleList"
  (cl:format cl:nil "# List of v2x vehicles~%~%Header header~%V2XVehicle[] vehicles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/V2XVehicle~%# Vehicle v2x custom header~%#~%# id       = ID of vehicle~%# position = x y position in odom frame (meters)~%# speed    = speed of the vehicle (meters/second)~%# yaw      = heading in radians north of east~%# self     = if this is the local vehicle, true, otherwise, false~%~%uint32 id~%geometry_msgs/Point position~%float64 speed~%float64 yaw~%bool is_self~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2XVehicleList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2XVehicleList>))
  "Converts a ROS message object to a list"
  (cl:list 'V2XVehicleList
    (cl:cons ':header (header msg))
    (cl:cons ':vehicles (vehicles msg))
))
