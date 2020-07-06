;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::NearestAnmWaypoint)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'NearestAnmWaypoint (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::NEARESTANMWAYPOINT")
  (make-package "ANM_MSGS::NEARESTANMWAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude NearestAnmWaypoint.msg.html


(defclass anm_msgs::NearestAnmWaypoint
  :super ros::object
  :slots (_name _distance _now_reached _last_reached ))

(defmethod anm_msgs::NearestAnmWaypoint
  (:init
   (&key
    ((:name __name) "")
    ((:distance __distance) 0.0)
    ((:now_reached __now_reached) nil)
    ((:last_reached __last_reached) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _distance (float __distance))
   (setq _now_reached __now_reached)
   (setq _last_reached __last_reached)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:now_reached
   (&optional __now_reached)
   (if __now_reached (setq _now_reached __now_reached)) _now_reached)
  (:last_reached
   (&optional __last_reached)
   (if __last_reached (setq _last_reached __last_reached)) _last_reached)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _distance
    8
    ;; bool _now_reached
    1
    ;; bool _last_reached
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _now_reached
       (if _now_reached (write-byte -1 s) (write-byte 0 s))
     ;; bool _last_reached
       (if _last_reached (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _now_reached
     (setq _now_reached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _last_reached
     (setq _last_reached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get anm_msgs::NearestAnmWaypoint :md5sum-) "804fca42cf51ff9c5042032107f82370")
(setf (get anm_msgs::NearestAnmWaypoint :datatype-) "anm_msgs/NearestAnmWaypoint")
(setf (get anm_msgs::NearestAnmWaypoint :definition-)
      "# The nearest anm_waypoint and its current distance
# Note, the nearest anm_waypoint may be one that hasn't been reached yet

string name        # special waypoint tag
float64 distance   # distance in m
bool now_reached   # true if distance is smaller than waypoint_radius
bool last_reached  # true if this waypoint is the last to be in range

")



(provide :anm_msgs/NearestAnmWaypoint "804fca42cf51ff9c5042032107f82370")


