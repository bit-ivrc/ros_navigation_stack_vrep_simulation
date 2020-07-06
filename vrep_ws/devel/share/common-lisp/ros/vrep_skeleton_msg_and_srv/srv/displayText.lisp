; Auto-generated. Do not edit!


(cl:in-package vrep_skeleton_msg_and_srv-srv)


;//! \htmlinclude displayText-request.msg.html

(cl:defclass <displayText-request> (roslisp-msg-protocol:ros-message)
  ((textToDisplay
    :reader textToDisplay
    :initarg :textToDisplay
    :type cl:string
    :initform ""))
)

(cl:defclass displayText-request (<displayText-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <displayText-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'displayText-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_skeleton_msg_and_srv-srv:<displayText-request> is deprecated: use vrep_skeleton_msg_and_srv-srv:displayText-request instead.")))

(cl:ensure-generic-function 'textToDisplay-val :lambda-list '(m))
(cl:defmethod textToDisplay-val ((m <displayText-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_skeleton_msg_and_srv-srv:textToDisplay-val is deprecated.  Use vrep_skeleton_msg_and_srv-srv:textToDisplay instead.")
  (textToDisplay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <displayText-request>) ostream)
  "Serializes a message object of type '<displayText-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'textToDisplay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'textToDisplay))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <displayText-request>) istream)
  "Deserializes a message object of type '<displayText-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'textToDisplay) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'textToDisplay) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<displayText-request>)))
  "Returns string type for a service object of type '<displayText-request>"
  "vrep_skeleton_msg_and_srv/displayTextRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'displayText-request)))
  "Returns string type for a service object of type 'displayText-request"
  "vrep_skeleton_msg_and_srv/displayTextRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<displayText-request>)))
  "Returns md5sum for a message object of type '<displayText-request>"
  "d53844fdc821fc6baaf569373762bd8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'displayText-request)))
  "Returns md5sum for a message object of type 'displayText-request"
  "d53844fdc821fc6baaf569373762bd8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<displayText-request>)))
  "Returns full string definition for message of type '<displayText-request>"
  (cl:format cl:nil "~%~%~%~%string textToDisplay~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'displayText-request)))
  "Returns full string definition for message of type 'displayText-request"
  (cl:format cl:nil "~%~%~%~%string textToDisplay~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <displayText-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'textToDisplay))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <displayText-request>))
  "Converts a ROS message object to a list"
  (cl:list 'displayText-request
    (cl:cons ':textToDisplay (textToDisplay msg))
))
;//! \htmlinclude displayText-response.msg.html

(cl:defclass <displayText-response> (roslisp-msg-protocol:ros-message)
  ((dialogHandle
    :reader dialogHandle
    :initarg :dialogHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass displayText-response (<displayText-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <displayText-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'displayText-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_skeleton_msg_and_srv-srv:<displayText-response> is deprecated: use vrep_skeleton_msg_and_srv-srv:displayText-response instead.")))

(cl:ensure-generic-function 'dialogHandle-val :lambda-list '(m))
(cl:defmethod dialogHandle-val ((m <displayText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_skeleton_msg_and_srv-srv:dialogHandle-val is deprecated.  Use vrep_skeleton_msg_and_srv-srv:dialogHandle instead.")
  (dialogHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <displayText-response>) ostream)
  "Serializes a message object of type '<displayText-response>"
  (cl:let* ((signed (cl:slot-value msg 'dialogHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <displayText-response>) istream)
  "Deserializes a message object of type '<displayText-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dialogHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<displayText-response>)))
  "Returns string type for a service object of type '<displayText-response>"
  "vrep_skeleton_msg_and_srv/displayTextResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'displayText-response)))
  "Returns string type for a service object of type 'displayText-response"
  "vrep_skeleton_msg_and_srv/displayTextResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<displayText-response>)))
  "Returns md5sum for a message object of type '<displayText-response>"
  "d53844fdc821fc6baaf569373762bd8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'displayText-response)))
  "Returns md5sum for a message object of type 'displayText-response"
  "d53844fdc821fc6baaf569373762bd8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<displayText-response>)))
  "Returns full string definition for message of type '<displayText-response>"
  (cl:format cl:nil "int32 dialogHandle~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'displayText-response)))
  "Returns full string definition for message of type 'displayText-response"
  (cl:format cl:nil "int32 dialogHandle~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <displayText-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <displayText-response>))
  "Converts a ROS message object to a list"
  (cl:list 'displayText-response
    (cl:cons ':dialogHandle (dialogHandle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'displayText)))
  'displayText-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'displayText)))
  'displayText-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'displayText)))
  "Returns string type for a service object of type '<displayText>"
  "vrep_skeleton_msg_and_srv/displayText")