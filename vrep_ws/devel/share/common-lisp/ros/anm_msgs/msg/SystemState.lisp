; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude SystemState.msg.html

(cl:defclass <SystemState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (envchks
    :reader envchks
    :initarg :envchks
    :type cl:fixnum
    :initform 0)
   (syschks
    :reader syschks
    :initarg :syschks
    :type cl:fixnum
    :initform 0)
   (navptschks
    :reader navptschks
    :initarg :navptschks
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SystemState (<SystemState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<SystemState> is deprecated: use anm_msgs-msg:SystemState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:state-val is deprecated.  Use anm_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'envchks-val :lambda-list '(m))
(cl:defmethod envchks-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:envchks-val is deprecated.  Use anm_msgs-msg:envchks instead.")
  (envchks m))

(cl:ensure-generic-function 'syschks-val :lambda-list '(m))
(cl:defmethod syschks-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:syschks-val is deprecated.  Use anm_msgs-msg:syschks instead.")
  (syschks m))

(cl:ensure-generic-function 'navptschks-val :lambda-list '(m))
(cl:defmethod navptschks-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:navptschks-val is deprecated.  Use anm_msgs-msg:navptschks instead.")
  (navptschks m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SystemState>)))
    "Constants for message type '<SystemState>"
  '((:ST_OFF . 0)
    (:ST_STANDBY . 1)
    (:ST_NOT_READY . 2)
    (:ST_PARKED . 3)
    (:ST_DRIVE . 4)
    (:ST_EPULLOVER . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SystemState)))
    "Constants for message type 'SystemState"
  '((:ST_OFF . 0)
    (:ST_STANDBY . 1)
    (:ST_NOT_READY . 2)
    (:ST_PARKED . 3)
    (:ST_DRIVE . 4)
    (:ST_EPULLOVER . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemState>) ostream)
  "Serializes a message object of type '<SystemState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'envchks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'syschks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'navptschks)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemState>) istream)
  "Deserializes a message object of type '<SystemState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'envchks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'syschks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'navptschks)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemState>)))
  "Returns string type for a message object of type '<SystemState>"
  "anm_msgs/SystemState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemState)))
  "Returns string type for a message object of type 'SystemState"
  "anm_msgs/SystemState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemState>)))
  "Returns md5sum for a message object of type '<SystemState>"
  "cbef3d6b7a4084b15097fdfe26dfc637")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemState)))
  "Returns md5sum for a message object of type 'SystemState"
  "cbef3d6b7a4084b15097fdfe26dfc637")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemState>)))
  "Returns full string definition for message of type '<SystemState>"
  (cl:format cl:nil "# This message contains the current state of the autonomous system~%# Detailed documentation can be found in google drive under the~%# architecture/system supervisor folder~%~%# The following constants are used to define the states~%uint8 ST_OFF = 0        # in manual mode - system is off~%uint8 ST_STANDBY = 1    # in manual mode - system is ready to go to auto mode~%uint8 ST_NOT_READY = 2  # in manual mode - system is not ready to go auto mode~%uint8 ST_PARKED = 3     # in auto mode - system is autonomously parked~%uint8 ST_DRIVE = 4      # in auto mode - system is autonomously driving~%uint8 ST_EPULLOVER = 5  # in auto mode - system is emergency pulling over~%~%# Message definition~%Header header~%uint8 state             # the state of the system~%uint8 envchks           # environment ready checks - 0 = fail, 1 = pass~%uint8 syschks           # hardware/software ready checks - 0 = fail, 1 = pass~%uint8 navptschks        # is there navigation points currently? 0 = no, 1 = yes~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemState)))
  "Returns full string definition for message of type 'SystemState"
  (cl:format cl:nil "# This message contains the current state of the autonomous system~%# Detailed documentation can be found in google drive under the~%# architecture/system supervisor folder~%~%# The following constants are used to define the states~%uint8 ST_OFF = 0        # in manual mode - system is off~%uint8 ST_STANDBY = 1    # in manual mode - system is ready to go to auto mode~%uint8 ST_NOT_READY = 2  # in manual mode - system is not ready to go auto mode~%uint8 ST_PARKED = 3     # in auto mode - system is autonomously parked~%uint8 ST_DRIVE = 4      # in auto mode - system is autonomously driving~%uint8 ST_EPULLOVER = 5  # in auto mode - system is emergency pulling over~%~%# Message definition~%Header header~%uint8 state             # the state of the system~%uint8 envchks           # environment ready checks - 0 = fail, 1 = pass~%uint8 syschks           # hardware/software ready checks - 0 = fail, 1 = pass~%uint8 navptschks        # is there navigation points currently? 0 = no, 1 = yes~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemState>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemState
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':envchks (envchks msg))
    (cl:cons ':syschks (syschks msg))
    (cl:cons ':navptschks (navptschks msg))
))
