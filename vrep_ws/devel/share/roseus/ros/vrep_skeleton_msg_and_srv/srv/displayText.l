;; Auto-generated. Do not edit!


(when (boundp 'vrep_skeleton_msg_and_srv::displayText)
  (if (not (find-package "VREP_SKELETON_MSG_AND_SRV"))
    (make-package "VREP_SKELETON_MSG_AND_SRV"))
  (shadow 'displayText (find-package "VREP_SKELETON_MSG_AND_SRV")))
(unless (find-package "VREP_SKELETON_MSG_AND_SRV::DISPLAYTEXT")
  (make-package "VREP_SKELETON_MSG_AND_SRV::DISPLAYTEXT"))
(unless (find-package "VREP_SKELETON_MSG_AND_SRV::DISPLAYTEXTREQUEST")
  (make-package "VREP_SKELETON_MSG_AND_SRV::DISPLAYTEXTREQUEST"))
(unless (find-package "VREP_SKELETON_MSG_AND_SRV::DISPLAYTEXTRESPONSE")
  (make-package "VREP_SKELETON_MSG_AND_SRV::DISPLAYTEXTRESPONSE"))

(in-package "ROS")





(defclass vrep_skeleton_msg_and_srv::displayTextRequest
  :super ros::object
  :slots (_textToDisplay ))

(defmethod vrep_skeleton_msg_and_srv::displayTextRequest
  (:init
   (&key
    ((:textToDisplay __textToDisplay) "")
    )
   (send-super :init)
   (setq _textToDisplay (string __textToDisplay))
   self)
  (:textToDisplay
   (&optional __textToDisplay)
   (if __textToDisplay (setq _textToDisplay __textToDisplay)) _textToDisplay)
  (:serialization-length
   ()
   (+
    ;; string _textToDisplay
    4 (length _textToDisplay)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _textToDisplay
       (write-long (length _textToDisplay) s) (princ _textToDisplay s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _textToDisplay
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _textToDisplay (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_skeleton_msg_and_srv::displayTextResponse
  :super ros::object
  :slots (_dialogHandle ))

(defmethod vrep_skeleton_msg_and_srv::displayTextResponse
  (:init
   (&key
    ((:dialogHandle __dialogHandle) 0)
    )
   (send-super :init)
   (setq _dialogHandle (round __dialogHandle))
   self)
  (:dialogHandle
   (&optional __dialogHandle)
   (if __dialogHandle (setq _dialogHandle __dialogHandle)) _dialogHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _dialogHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _dialogHandle
       (write-long _dialogHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _dialogHandle
     (setq _dialogHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_skeleton_msg_and_srv::displayText
  :super ros::object
  :slots ())

(setf (get vrep_skeleton_msg_and_srv::displayText :md5sum-) "d53844fdc821fc6baaf569373762bd8b")
(setf (get vrep_skeleton_msg_and_srv::displayText :datatype-) "vrep_skeleton_msg_and_srv/displayText")
(setf (get vrep_skeleton_msg_and_srv::displayText :request) vrep_skeleton_msg_and_srv::displayTextRequest)
(setf (get vrep_skeleton_msg_and_srv::displayText :response) vrep_skeleton_msg_and_srv::displayTextResponse)

(defmethod vrep_skeleton_msg_and_srv::displayTextRequest
  (:response () (instance vrep_skeleton_msg_and_srv::displayTextResponse :init)))

(setf (get vrep_skeleton_msg_and_srv::displayTextRequest :md5sum-) "d53844fdc821fc6baaf569373762bd8b")
(setf (get vrep_skeleton_msg_and_srv::displayTextRequest :datatype-) "vrep_skeleton_msg_and_srv/displayTextRequest")
(setf (get vrep_skeleton_msg_and_srv::displayTextRequest :definition-)
      "



string textToDisplay
---
int32 dialogHandle


")

(setf (get vrep_skeleton_msg_and_srv::displayTextResponse :md5sum-) "d53844fdc821fc6baaf569373762bd8b")
(setf (get vrep_skeleton_msg_and_srv::displayTextResponse :datatype-) "vrep_skeleton_msg_and_srv/displayTextResponse")
(setf (get vrep_skeleton_msg_and_srv::displayTextResponse :definition-)
      "



string textToDisplay
---
int32 dialogHandle


")



(provide :vrep_skeleton_msg_and_srv/displayText "d53844fdc821fc6baaf569373762bd8b")


