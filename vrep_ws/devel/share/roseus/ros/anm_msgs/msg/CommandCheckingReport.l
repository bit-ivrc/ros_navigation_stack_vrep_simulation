;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::CommandCheckingReport)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'CommandCheckingReport (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::COMMANDCHECKINGREPORT")
  (make-package "ANM_MSGS::COMMANDCHECKINGREPORT"))

(in-package "ROS")
;;//! \htmlinclude CommandCheckingReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::CommandCheckingReport
  :super ros::object
  :slots (_error_message _error_code ))

(defmethod anm_msgs::CommandCheckingReport
  (:init
   (&key
    ((:error_message __error_message) (instance std_msgs::String :init))
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _error_message __error_message)
   (setq _error_code (round __error_code))
   self)
  (:error_message
   (&rest __error_message)
   (if (keywordp (car __error_message))
       (send* _error_message __error_message)
     (progn
       (if __error_message (setq _error_message (car __error_message)))
       _error_message)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _error_message
    (send _error_message :serialization-length)
    ;; int16 _error_code
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _error_message
       (send _error_message :serialize s)
     ;; int16 _error_code
       (write-word _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _error_message
     (send _error_message :deserialize buf ptr-) (incf ptr- (send _error_message :serialization-length))
   ;; int16 _error_code
     (setq _error_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get anm_msgs::CommandCheckingReport :md5sum-) "e493a4ffb569d2d770774c27d6f3ed0c")
(setf (get anm_msgs::CommandCheckingReport :datatype-) "anm_msgs/CommandCheckingReport")
(setf (get anm_msgs::CommandCheckingReport :definition-)
      "# This message acts as a report from the command_checking node to broadcast
# any errors detected in the control commands

std_msgs/String error_message
int16 error_code

================================================================================
MSG: std_msgs/String
string data

")



(provide :anm_msgs/CommandCheckingReport "e493a4ffb569d2d770774c27d6f3ed0c")


