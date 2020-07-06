; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude HMIReport.msg.html

(cl:defclass <HMIReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (auto_toggle_pressed
    :reader auto_toggle_pressed
    :initarg :auto_toggle_pressed
    :type cl:fixnum
    :initform 0)
   (manual_estop_pressed
    :reader manual_estop_pressed
    :initarg :manual_estop_pressed
    :type cl:fixnum
    :initform 0)
   (auto_engage_pressed
    :reader auto_engage_pressed
    :initarg :auto_engage_pressed
    :type cl:fixnum
    :initform 0)
   (auto_disengage_pressed
    :reader auto_disengage_pressed
    :initarg :auto_disengage_pressed
    :type cl:fixnum
    :initform 0)
   (environment_checks_pressed
    :reader environment_checks_pressed
    :initarg :environment_checks_pressed
    :type cl:fixnum
    :initform 0)
   (system_checks_pressed
    :reader system_checks_pressed
    :initarg :system_checks_pressed
    :type cl:fixnum
    :initform 0)
   (emergency_pullover_exit_pressed
    :reader emergency_pullover_exit_pressed
    :initarg :emergency_pullover_exit_pressed
    :type cl:fixnum
    :initform 0)
   (manual_drive_pressed
    :reader manual_drive_pressed
    :initarg :manual_drive_pressed
    :type cl:fixnum
    :initform 0)
   (gear_change_pressed
    :reader gear_change_pressed
    :initarg :gear_change_pressed
    :type cl:fixnum
    :initform 0)
   (auto_toggle
    :reader auto_toggle
    :initarg :auto_toggle
    :type cl:fixnum
    :initform 0)
   (manual_estop
    :reader manual_estop
    :initarg :manual_estop
    :type cl:fixnum
    :initform 0)
   (environment_checks
    :reader environment_checks
    :initarg :environment_checks
    :type cl:fixnum
    :initform 0)
   (system_checks
    :reader system_checks
    :initarg :system_checks
    :type cl:fixnum
    :initform 0)
   (emergency_pullover_exit
    :reader emergency_pullover_exit
    :initarg :emergency_pullover_exit
    :type cl:fixnum
    :initform 0)
   (gear_setting
    :reader gear_setting
    :initarg :gear_setting
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HMIReport (<HMIReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<HMIReport> is deprecated: use anm_msgs-msg:HMIReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'auto_toggle_pressed-val :lambda-list '(m))
(cl:defmethod auto_toggle_pressed-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:auto_toggle_pressed-val is deprecated.  Use anm_msgs-msg:auto_toggle_pressed instead.")
  (auto_toggle_pressed m))

(cl:ensure-generic-function 'manual_estop_pressed-val :lambda-list '(m))
(cl:defmethod manual_estop_pressed-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:manual_estop_pressed-val is deprecated.  Use anm_msgs-msg:manual_estop_pressed instead.")
  (manual_estop_pressed m))

(cl:ensure-generic-function 'auto_engage_pressed-val :lambda-list '(m))
(cl:defmethod auto_engage_pressed-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:auto_engage_pressed-val is deprecated.  Use anm_msgs-msg:auto_engage_pressed instead.")
  (auto_engage_pressed m))

(cl:ensure-generic-function 'auto_disengage_pressed-val :lambda-list '(m))
(cl:defmethod auto_disengage_pressed-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:auto_disengage_pressed-val is deprecated.  Use anm_msgs-msg:auto_disengage_pressed instead.")
  (auto_disengage_pressed m))

(cl:ensure-generic-function 'environment_checks_pressed-val :lambda-list '(m))
(cl:defmethod environment_checks_pressed-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:environment_checks_pressed-val is deprecated.  Use anm_msgs-msg:environment_checks_pressed instead.")
  (environment_checks_pressed m))

(cl:ensure-generic-function 'system_checks_pressed-val :lambda-list '(m))
(cl:defmethod system_checks_pressed-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:system_checks_pressed-val is deprecated.  Use anm_msgs-msg:system_checks_pressed instead.")
  (system_checks_pressed m))

(cl:ensure-generic-function 'emergency_pullover_exit_pressed-val :lambda-list '(m))
(cl:defmethod emergency_pullover_exit_pressed-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:emergency_pullover_exit_pressed-val is deprecated.  Use anm_msgs-msg:emergency_pullover_exit_pressed instead.")
  (emergency_pullover_exit_pressed m))

(cl:ensure-generic-function 'manual_drive_pressed-val :lambda-list '(m))
(cl:defmethod manual_drive_pressed-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:manual_drive_pressed-val is deprecated.  Use anm_msgs-msg:manual_drive_pressed instead.")
  (manual_drive_pressed m))

(cl:ensure-generic-function 'gear_change_pressed-val :lambda-list '(m))
(cl:defmethod gear_change_pressed-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:gear_change_pressed-val is deprecated.  Use anm_msgs-msg:gear_change_pressed instead.")
  (gear_change_pressed m))

(cl:ensure-generic-function 'auto_toggle-val :lambda-list '(m))
(cl:defmethod auto_toggle-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:auto_toggle-val is deprecated.  Use anm_msgs-msg:auto_toggle instead.")
  (auto_toggle m))

(cl:ensure-generic-function 'manual_estop-val :lambda-list '(m))
(cl:defmethod manual_estop-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:manual_estop-val is deprecated.  Use anm_msgs-msg:manual_estop instead.")
  (manual_estop m))

(cl:ensure-generic-function 'environment_checks-val :lambda-list '(m))
(cl:defmethod environment_checks-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:environment_checks-val is deprecated.  Use anm_msgs-msg:environment_checks instead.")
  (environment_checks m))

(cl:ensure-generic-function 'system_checks-val :lambda-list '(m))
(cl:defmethod system_checks-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:system_checks-val is deprecated.  Use anm_msgs-msg:system_checks instead.")
  (system_checks m))

(cl:ensure-generic-function 'emergency_pullover_exit-val :lambda-list '(m))
(cl:defmethod emergency_pullover_exit-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:emergency_pullover_exit-val is deprecated.  Use anm_msgs-msg:emergency_pullover_exit instead.")
  (emergency_pullover_exit m))

(cl:ensure-generic-function 'gear_setting-val :lambda-list '(m))
(cl:defmethod gear_setting-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:gear_setting-val is deprecated.  Use anm_msgs-msg:gear_setting instead.")
  (gear_setting m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIReport>) ostream)
  "Serializes a message object of type '<HMIReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_toggle_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'manual_estop_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_engage_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_disengage_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'environment_checks_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_checks_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_pullover_exit_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'manual_drive_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_change_pressed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_toggle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'manual_estop)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'environment_checks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_checks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_pullover_exit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_setting)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIReport>) istream)
  "Deserializes a message object of type '<HMIReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_toggle_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'manual_estop_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_engage_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_disengage_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'environment_checks_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_checks_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_pullover_exit_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'manual_drive_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_change_pressed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_toggle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'manual_estop)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'environment_checks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_checks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_pullover_exit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_setting)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIReport>)))
  "Returns string type for a message object of type '<HMIReport>"
  "anm_msgs/HMIReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIReport)))
  "Returns string type for a message object of type 'HMIReport"
  "anm_msgs/HMIReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIReport>)))
  "Returns md5sum for a message object of type '<HMIReport>"
  "515b6d3b9f37b3178d08258bc23fa8f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIReport)))
  "Returns md5sum for a message object of type 'HMIReport"
  "515b6d3b9f37b3178d08258bc23fa8f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIReport>)))
  "Returns full string definition for message of type '<HMIReport>"
  (cl:format cl:nil "# This message indicates input changes on the HMI~%# Any field with an '_pressed' at the end is a button update (1 = update, 0 = not)~%# Any field after with a 1 means PASS/ON/SET, and 0 means FAIIL/OFF/UNSET (except gear change)~%# For gear change, 0=park, 1=drive, 2=reverse, 3=neutral, 4=low~%~%Header header~%uint8 auto_toggle_pressed~%uint8 manual_estop_pressed~%uint8 auto_engage_pressed~%uint8 auto_disengage_pressed~%uint8 environment_checks_pressed~%uint8 system_checks_pressed~%uint8 emergency_pullover_exit_pressed~%uint8 manual_drive_pressed~%uint8 gear_change_pressed~%uint8 auto_toggle~%uint8 manual_estop~%uint8 environment_checks~%uint8 system_checks~%uint8 emergency_pullover_exit~%uint8 gear_setting~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIReport)))
  "Returns full string definition for message of type 'HMIReport"
  (cl:format cl:nil "# This message indicates input changes on the HMI~%# Any field with an '_pressed' at the end is a button update (1 = update, 0 = not)~%# Any field after with a 1 means PASS/ON/SET, and 0 means FAIIL/OFF/UNSET (except gear change)~%# For gear change, 0=park, 1=drive, 2=reverse, 3=neutral, 4=low~%~%Header header~%uint8 auto_toggle_pressed~%uint8 manual_estop_pressed~%uint8 auto_engage_pressed~%uint8 auto_disengage_pressed~%uint8 environment_checks_pressed~%uint8 system_checks_pressed~%uint8 emergency_pullover_exit_pressed~%uint8 manual_drive_pressed~%uint8 gear_change_pressed~%uint8 auto_toggle~%uint8 manual_estop~%uint8 environment_checks~%uint8 system_checks~%uint8 emergency_pullover_exit~%uint8 gear_setting~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIReport>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIReport
    (cl:cons ':header (header msg))
    (cl:cons ':auto_toggle_pressed (auto_toggle_pressed msg))
    (cl:cons ':manual_estop_pressed (manual_estop_pressed msg))
    (cl:cons ':auto_engage_pressed (auto_engage_pressed msg))
    (cl:cons ':auto_disengage_pressed (auto_disengage_pressed msg))
    (cl:cons ':environment_checks_pressed (environment_checks_pressed msg))
    (cl:cons ':system_checks_pressed (system_checks_pressed msg))
    (cl:cons ':emergency_pullover_exit_pressed (emergency_pullover_exit_pressed msg))
    (cl:cons ':manual_drive_pressed (manual_drive_pressed msg))
    (cl:cons ':gear_change_pressed (gear_change_pressed msg))
    (cl:cons ':auto_toggle (auto_toggle msg))
    (cl:cons ':manual_estop (manual_estop msg))
    (cl:cons ':environment_checks (environment_checks msg))
    (cl:cons ':system_checks (system_checks msg))
    (cl:cons ':emergency_pullover_exit (emergency_pullover_exit msg))
    (cl:cons ':gear_setting (gear_setting msg))
))
