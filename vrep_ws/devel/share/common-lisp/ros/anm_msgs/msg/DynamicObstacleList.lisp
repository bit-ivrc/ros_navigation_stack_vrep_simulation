; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude DynamicObstacleList.msg.html

(cl:defclass <DynamicObstacleList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector anm_msgs-msg:DynamicObstacle)
   :initform (cl:make-array 0 :element-type 'anm_msgs-msg:DynamicObstacle :initial-element (cl:make-instance 'anm_msgs-msg:DynamicObstacle))))
)

(cl:defclass DynamicObstacleList (<DynamicObstacleList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicObstacleList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicObstacleList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<DynamicObstacleList> is deprecated: use anm_msgs-msg:DynamicObstacleList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DynamicObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <DynamicObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:obstacles-val is deprecated.  Use anm_msgs-msg:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicObstacleList>) ostream)
  "Serializes a message object of type '<DynamicObstacleList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicObstacleList>) istream)
  "Deserializes a message object of type '<DynamicObstacleList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'anm_msgs-msg:DynamicObstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicObstacleList>)))
  "Returns string type for a message object of type '<DynamicObstacleList>"
  "anm_msgs/DynamicObstacleList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicObstacleList)))
  "Returns string type for a message object of type 'DynamicObstacleList"
  "anm_msgs/DynamicObstacleList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicObstacleList>)))
  "Returns md5sum for a message object of type '<DynamicObstacleList>"
  "3435c2c322edb674d240f51d9feb64aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicObstacleList)))
  "Returns md5sum for a message object of type 'DynamicObstacleList"
  "3435c2c322edb674d240f51d9feb64aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicObstacleList>)))
  "Returns full string definition for message of type '<DynamicObstacleList>"
  (cl:format cl:nil "# Dynamic obstacle list custom message ~%Header header~%anm_msgs/DynamicObstacle[] obstacles~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/DynamicObstacle~%# This message decribes the information of dynamic obstacles in odom frame ~%# position       =  The recent position of the dynamic obstacle(centroid of the object)~%# dimensions     =  The bounding box size:  length(along heading direction), width and height ~%# speed          =  The speed of the car along the heading direction.~%# yaw            =  The recent heading of the car.  ~%~%geometry_msgs/Point position~%geometry_msgs/Vector3 dimensions   # length width and height~%float32 speed~%float32 yaw ~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicObstacleList)))
  "Returns full string definition for message of type 'DynamicObstacleList"
  (cl:format cl:nil "# Dynamic obstacle list custom message ~%Header header~%anm_msgs/DynamicObstacle[] obstacles~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/DynamicObstacle~%# This message decribes the information of dynamic obstacles in odom frame ~%# position       =  The recent position of the dynamic obstacle(centroid of the object)~%# dimensions     =  The bounding box size:  length(along heading direction), width and height ~%# speed          =  The speed of the car along the heading direction.~%# yaw            =  The recent heading of the car.  ~%~%geometry_msgs/Point position~%geometry_msgs/Vector3 dimensions   # length width and height~%float32 speed~%float32 yaw ~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicObstacleList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicObstacleList>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicObstacleList
    (cl:cons ':header (header msg))
    (cl:cons ':obstacles (obstacles msg))
))
