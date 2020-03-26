;; Auto-generated. Do not edit!


(when (boundp 'ros_essentials_cpp::RectangleAreaService)
  (if (not (find-package "ROS_ESSENTIALS_CPP"))
    (make-package "ROS_ESSENTIALS_CPP"))
  (shadow 'RectangleAreaService (find-package "ROS_ESSENTIALS_CPP")))
(unless (find-package "ROS_ESSENTIALS_CPP::RECTANGLEAREASERVICE")
  (make-package "ROS_ESSENTIALS_CPP::RECTANGLEAREASERVICE"))
(unless (find-package "ROS_ESSENTIALS_CPP::RECTANGLEAREASERVICEREQUEST")
  (make-package "ROS_ESSENTIALS_CPP::RECTANGLEAREASERVICEREQUEST"))
(unless (find-package "ROS_ESSENTIALS_CPP::RECTANGLEAREASERVICERESPONSE")
  (make-package "ROS_ESSENTIALS_CPP::RECTANGLEAREASERVICERESPONSE"))

(in-package "ROS")





(defclass ros_essentials_cpp::RectangleAreaServiceRequest
  :super ros::object
  :slots (_width _height ))

(defmethod ros_essentials_cpp::RectangleAreaServiceRequest
  (:init
   (&key
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _width (float __width))
   (setq _height (float __height))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float32 _width
    4
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_essentials_cpp::RectangleAreaServiceResponse
  :super ros::object
  :slots (_area ))

(defmethod ros_essentials_cpp::RectangleAreaServiceResponse
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
    ;; float32 _area
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _area
       (sys::poke _area (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _area
     (setq _area (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_essentials_cpp::RectangleAreaService
  :super ros::object
  :slots ())

(setf (get ros_essentials_cpp::RectangleAreaService :md5sum-) "92e9c8f940da77dc3e1bc289f7dd146e")
(setf (get ros_essentials_cpp::RectangleAreaService :datatype-) "ros_essentials_cpp/RectangleAreaService")
(setf (get ros_essentials_cpp::RectangleAreaService :request) ros_essentials_cpp::RectangleAreaServiceRequest)
(setf (get ros_essentials_cpp::RectangleAreaService :response) ros_essentials_cpp::RectangleAreaServiceResponse)

(defmethod ros_essentials_cpp::RectangleAreaServiceRequest
  (:response () (instance ros_essentials_cpp::RectangleAreaServiceResponse :init)))

(setf (get ros_essentials_cpp::RectangleAreaServiceRequest :md5sum-) "92e9c8f940da77dc3e1bc289f7dd146e")
(setf (get ros_essentials_cpp::RectangleAreaServiceRequest :datatype-) "ros_essentials_cpp/RectangleAreaServiceRequest")
(setf (get ros_essentials_cpp::RectangleAreaServiceRequest :definition-)
      "float32 width
float32 height
---
float32 area

")

(setf (get ros_essentials_cpp::RectangleAreaServiceResponse :md5sum-) "92e9c8f940da77dc3e1bc289f7dd146e")
(setf (get ros_essentials_cpp::RectangleAreaServiceResponse :datatype-) "ros_essentials_cpp/RectangleAreaServiceResponse")
(setf (get ros_essentials_cpp::RectangleAreaServiceResponse :definition-)
      "float32 width
float32 height
---
float32 area

")



(provide :ros_essentials_cpp/RectangleAreaService "92e9c8f940da77dc3e1bc289f7dd146e")


