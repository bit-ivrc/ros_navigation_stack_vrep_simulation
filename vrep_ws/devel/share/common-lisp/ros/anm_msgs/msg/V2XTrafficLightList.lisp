; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude V2XTrafficLightList.msg.html

(cl:defclass <V2XTrafficLightList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (traffic_lights
    :reader traffic_lights
    :initarg :traffic_lights
    :type (cl:vector anm_msgs-msg:V2XTrafficLight)
   :initform (cl:make-array 0 :element-type 'anm_msgs-msg:V2XTrafficLight :initial-element (cl:make-instance 'anm_msgs-msg:V2XTrafficLight))))
)

(cl:defclass V2XTrafficLightList (<V2XTrafficLightList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2XTrafficLightList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2XTrafficLightList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<V2XTrafficLightList> is deprecated: use anm_msgs-msg:V2XTrafficLightList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <V2XTrafficLightList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'traffic_lights-val :lambda-list '(m))
(cl:defmethod traffic_lights-val ((m <V2XTrafficLightList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:traffic_lights-val is deprecated.  Use anm_msgs-msg:traffic_lights instead.")
  (traffic_lights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2XTrafficLightList>) ostream)
  "Serializes a message object of type '<V2XTrafficLightList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_lights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_lights))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2XTrafficLightList>) istream)
  "Deserializes a message object of type '<V2XTrafficLightList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_lights) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_lights)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'anm_msgs-msg:V2XTrafficLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2XTrafficLightList>)))
  "Returns string type for a message object of type '<V2XTrafficLightList>"
  "anm_msgs/V2XTrafficLightList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2XTrafficLightList)))
  "Returns string type for a message object of type 'V2XTrafficLightList"
  "anm_msgs/V2XTrafficLightList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2XTrafficLightList>)))
  "Returns md5sum for a message object of type '<V2XTrafficLightList>"
  "3380c76e7b58f862b1077024369633ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2XTrafficLightList)))
  "Returns md5sum for a message object of type 'V2XTrafficLightList"
  "3380c76e7b58f862b1077024369633ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2XTrafficLightList>)))
  "Returns full string definition for message of type '<V2XTrafficLightList>"
  (cl:format cl:nil "# List of v2x traffic lights~%~%Header header~%V2XTrafficLight[] traffic_lights~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/V2XTrafficLight~%# Traffic light v2x custom header~%#~%# id             = ID of traffic light (for traffic lights)~%# position       = x y position in odom frame (meters)~%# yaw            = heading in radians north of east~%# effect_length  = length of the \"fence line\" for traffic light (meters)~%# time_to_change = the time left for the light state to  change (seconds)~%# light_state    = current state of the light (below has state numbers)~%~%uint32 id~%geometry_msgs/Point position~%float64 yaw~%float64 effect_length~%float64 time_to_change~%~%uint8 light_state~%uint8 DARK = 0~%uint8 GREEN = 1~%uint8 YELLOW = 2~%uint8 RED = 3~%uint8 V2X_LIGHT_STATE_KIND_COUNT = 4~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2XTrafficLightList)))
  "Returns full string definition for message of type 'V2XTrafficLightList"
  (cl:format cl:nil "# List of v2x traffic lights~%~%Header header~%V2XTrafficLight[] traffic_lights~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/V2XTrafficLight~%# Traffic light v2x custom header~%#~%# id             = ID of traffic light (for traffic lights)~%# position       = x y position in odom frame (meters)~%# yaw            = heading in radians north of east~%# effect_length  = length of the \"fence line\" for traffic light (meters)~%# time_to_change = the time left for the light state to  change (seconds)~%# light_state    = current state of the light (below has state numbers)~%~%uint32 id~%geometry_msgs/Point position~%float64 yaw~%float64 effect_length~%float64 time_to_change~%~%uint8 light_state~%uint8 DARK = 0~%uint8 GREEN = 1~%uint8 YELLOW = 2~%uint8 RED = 3~%uint8 V2X_LIGHT_STATE_KIND_COUNT = 4~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2XTrafficLightList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_lights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2XTrafficLightList>))
  "Converts a ROS message object to a list"
  (cl:list 'V2XTrafficLightList
    (cl:cons ':header (header msg))
    (cl:cons ':traffic_lights (traffic_lights msg))
))
