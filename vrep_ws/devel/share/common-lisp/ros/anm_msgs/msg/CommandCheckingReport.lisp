; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude CommandCheckingReport.msg.html

(cl:defclass <CommandCheckingReport> (roslisp-msg-protocol:ros-message)
  ((error_message
    :reader error_message
    :initarg :error_message
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommandCheckingReport (<CommandCheckingReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandCheckingReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandCheckingReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<CommandCheckingReport> is deprecated: use anm_msgs-msg:CommandCheckingReport instead.")))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <CommandCheckingReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:error_message-val is deprecated.  Use anm_msgs-msg:error_message instead.")
  (error_message m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CommandCheckingReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:error_code-val is deprecated.  Use anm_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandCheckingReport>) ostream)
  "Serializes a message object of type '<CommandCheckingReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_message) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandCheckingReport>) istream)
  "Deserializes a message object of type '<CommandCheckingReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_message) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandCheckingReport>)))
  "Returns string type for a message object of type '<CommandCheckingReport>"
  "anm_msgs/CommandCheckingReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandCheckingReport)))
  "Returns string type for a message object of type 'CommandCheckingReport"
  "anm_msgs/CommandCheckingReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandCheckingReport>)))
  "Returns md5sum for a message object of type '<CommandCheckingReport>"
  "e493a4ffb569d2d770774c27d6f3ed0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandCheckingReport)))
  "Returns md5sum for a message object of type 'CommandCheckingReport"
  "e493a4ffb569d2d770774c27d6f3ed0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandCheckingReport>)))
  "Returns full string definition for message of type '<CommandCheckingReport>"
  (cl:format cl:nil "# This message acts as a report from the command_checking node to broadcast~%# any errors detected in the control commands~%~%std_msgs/String error_message~%int16 error_code~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandCheckingReport)))
  "Returns full string definition for message of type 'CommandCheckingReport"
  (cl:format cl:nil "# This message acts as a report from the command_checking node to broadcast~%# any errors detected in the control commands~%~%std_msgs/String error_message~%int16 error_code~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandCheckingReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_message))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandCheckingReport>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandCheckingReport
    (cl:cons ':error_message (error_message msg))
    (cl:cons ':error_code (error_code msg))
))
