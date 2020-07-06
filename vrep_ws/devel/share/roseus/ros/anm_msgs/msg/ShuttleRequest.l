;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::ShuttleRequest)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'ShuttleRequest (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::SHUTTLEREQUEST")
  (make-package "ANM_MSGS::SHUTTLEREQUEST"))

(in-package "ROS")
;;//! \htmlinclude ShuttleRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::ShuttleRequest
  :super ros::object
  :slots (_header _pickup_waypoint _dropoff_waypoint ))

(defmethod anm_msgs::ShuttleRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pickup_waypoint __pickup_waypoint) "")
    ((:dropoff_waypoint __dropoff_waypoint) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _pickup_waypoint (string __pickup_waypoint))
   (setq _dropoff_waypoint (string __dropoff_waypoint))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pickup_waypoint
   (&optional __pickup_waypoint)
   (if __pickup_waypoint (setq _pickup_waypoint __pickup_waypoint)) _pickup_waypoint)
  (:dropoff_waypoint
   (&optional __dropoff_waypoint)
   (if __dropoff_waypoint (setq _dropoff_waypoint __dropoff_waypoint)) _dropoff_waypoint)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _pickup_waypoint
    4 (length _pickup_waypoint)
    ;; string _dropoff_waypoint
    4 (length _dropoff_waypoint)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _pickup_waypoint
       (write-long (length _pickup_waypoint) s) (princ _pickup_waypoint s)
     ;; string _dropoff_waypoint
       (write-long (length _dropoff_waypoint) s) (princ _dropoff_waypoint s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _pickup_waypoint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pickup_waypoint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dropoff_waypoint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dropoff_waypoint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get anm_msgs::ShuttleRequest :md5sum-) "01e5c9d9c3c1b369563b3402a45ec191")
(setf (get anm_msgs::ShuttleRequest :datatype-) "anm_msgs/ShuttleRequest")
(setf (get anm_msgs::ShuttleRequest :definition-)
      "# Pickup and dropoff locations for shuttle demo

Header header
string pickup_waypoint     # name of pickup anm_waypoint
string dropoff_waypoint    # name of dropoff anm_waypoint

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :anm_msgs/ShuttleRequest "01e5c9d9c3c1b369563b3402a45ec191")


