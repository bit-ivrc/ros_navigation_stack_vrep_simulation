; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude DynamicObstacle.msg.html

(cl:defclass <DynamicObstacle> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass DynamicObstacle (<DynamicObstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicObstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicObstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<DynamicObstacle> is deprecated: use anm_msgs-msg:DynamicObstacle instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <DynamicObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:position-val is deprecated.  Use anm_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <DynamicObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:dimensions-val is deprecated.  Use anm_msgs-msg:dimensions instead.")
  (dimensions m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <DynamicObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:speed-val is deprecated.  Use anm_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <DynamicObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:yaw-val is deprecated.  Use anm_msgs-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicObstacle>) ostream)
  "Serializes a message object of type '<DynamicObstacle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicObstacle>) istream)
  "Deserializes a message object of type '<DynamicObstacle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicObstacle>)))
  "Returns string type for a message object of type '<DynamicObstacle>"
  "anm_msgs/DynamicObstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicObstacle)))
  "Returns string type for a message object of type 'DynamicObstacle"
  "anm_msgs/DynamicObstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicObstacle>)))
  "Returns md5sum for a message object of type '<DynamicObstacle>"
  "3276b97597f7ee28ba720e128f1fb772")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicObstacle)))
  "Returns md5sum for a message object of type 'DynamicObstacle"
  "3276b97597f7ee28ba720e128f1fb772")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicObstacle>)))
  "Returns full string definition for message of type '<DynamicObstacle>"
  (cl:format cl:nil "# This message decribes the information of dynamic obstacles in odom frame ~%# position       =  The recent position of the dynamic obstacle(centroid of the object)~%# dimensions     =  The bounding box size:  length(along heading direction), width and height ~%# speed          =  The speed of the car along the heading direction.~%# yaw            =  The recent heading of the car.  ~%~%geometry_msgs/Point position~%geometry_msgs/Vector3 dimensions   # length width and height~%float32 speed~%float32 yaw ~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicObstacle)))
  "Returns full string definition for message of type 'DynamicObstacle"
  (cl:format cl:nil "# This message decribes the information of dynamic obstacles in odom frame ~%# position       =  The recent position of the dynamic obstacle(centroid of the object)~%# dimensions     =  The bounding box size:  length(along heading direction), width and height ~%# speed          =  The speed of the car along the heading direction.~%# yaw            =  The recent heading of the car.  ~%~%geometry_msgs/Point position~%geometry_msgs/Vector3 dimensions   # length width and height~%float32 speed~%float32 yaw ~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicObstacle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicObstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicObstacle
    (cl:cons ':position (position msg))
    (cl:cons ':dimensions (dimensions msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':yaw (yaw msg))
))
