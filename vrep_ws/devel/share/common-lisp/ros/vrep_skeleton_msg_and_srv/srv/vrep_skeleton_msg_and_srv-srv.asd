
(cl:in-package :asdf)

(defsystem "vrep_skeleton_msg_and_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "displayText" :depends-on ("_package_displayText"))
    (:file "_package_displayText" :depends-on ("_package"))
  ))