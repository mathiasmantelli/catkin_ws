;; Auto-generated. Do not edit!


(when (boundp 'ros_essentials_cpp::AreaRectangle)
  (if (not (find-package "ROS_ESSENTIALS_CPP"))
    (make-package "ROS_ESSENTIALS_CPP"))
  (shadow 'AreaRectangle (find-package "ROS_ESSENTIALS_CPP")))
(unless (find-package "ROS_ESSENTIALS_CPP::AREARECTANGLE")
  (make-package "ROS_ESSENTIALS_CPP::AREARECTANGLE"))
(unless (find-package "ROS_ESSENTIALS_CPP::AREARECTANGLEREQUEST")
  (make-package "ROS_ESSENTIALS_CPP::AREARECTANGLEREQUEST"))
(unless (find-package "ROS_ESSENTIALS_CPP::AREARECTANGLERESPONSE")
  (make-package "ROS_ESSENTIALS_CPP::AREARECTANGLERESPONSE"))

(in-package "ROS")





(defclass ros_essentials_cpp::AreaRectangleRequest
  :super ros::object
  :slots (_w _h ))

(defmethod ros_essentials_cpp::AreaRectangleRequest
  (:init
   (&key
    ((:w __w) 0.0)
    ((:h __h) 0.0)
    )
   (send-super :init)
   (setq _w (float __w))
   (setq _h (float __h))
   self)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:serialization-length
   ()
   (+
    ;; float64 _w
    8
    ;; float64 _h
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _h
       (sys::poke _h (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _h
     (setq _h (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ros_essentials_cpp::AreaRectangleResponse
  :super ros::object
  :slots (_area ))

(defmethod ros_essentials_cpp::AreaRectangleResponse
  (:init
   (&key
    ((:area __area) 0.0)
    )
   (send-super :init)
   (setq _area (float __area))
   self)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:serialization-length
   ()
   (+
    ;; float64 _area
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _area
       (sys::poke _area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _area
     (setq _area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ros_essentials_cpp::AreaRectangle
  :super ros::object
  :slots ())

(setf (get ros_essentials_cpp::AreaRectangle :md5sum-) "acc8e380ccd62fbb09a40f869ff912e3")
(setf (get ros_essentials_cpp::AreaRectangle :datatype-) "ros_essentials_cpp/AreaRectangle")
(setf (get ros_essentials_cpp::AreaRectangle :request) ros_essentials_cpp::AreaRectangleRequest)
(setf (get ros_essentials_cpp::AreaRectangle :response) ros_essentials_cpp::AreaRectangleResponse)

(defmethod ros_essentials_cpp::AreaRectangleRequest
  (:response () (instance ros_essentials_cpp::AreaRectangleResponse :init)))

(setf (get ros_essentials_cpp::AreaRectangleRequest :md5sum-) "acc8e380ccd62fbb09a40f869ff912e3")
(setf (get ros_essentials_cpp::AreaRectangleRequest :datatype-) "ros_essentials_cpp/AreaRectangleRequest")
(setf (get ros_essentials_cpp::AreaRectangleRequest :definition-)
      "float64 w
float64 h
---
float64 area

")

(setf (get ros_essentials_cpp::AreaRectangleResponse :md5sum-) "acc8e380ccd62fbb09a40f869ff912e3")
(setf (get ros_essentials_cpp::AreaRectangleResponse :datatype-) "ros_essentials_cpp/AreaRectangleResponse")
(setf (get ros_essentials_cpp::AreaRectangleResponse :definition-)
      "float64 w
float64 h
---
float64 area

")



(provide :ros_essentials_cpp/AreaRectangle "acc8e380ccd62fbb09a40f869ff912e3")


