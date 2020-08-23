; Auto-generated. Do not edit!


(cl:in-package ros_essentials_cpp-srv)


;//! \htmlinclude AreaRectangle-request.msg.html

(cl:defclass <AreaRectangle-request> (roslisp-msg-protocol:ros-message)
  ((w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0)
   (h
    :reader h
    :initarg :h
    :type cl:float
    :initform 0.0))
)

(cl:defclass AreaRectangle-request (<AreaRectangle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AreaRectangle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AreaRectangle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_essentials_cpp-srv:<AreaRectangle-request> is deprecated: use ros_essentials_cpp-srv:AreaRectangle-request instead.")))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <AreaRectangle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_essentials_cpp-srv:w-val is deprecated.  Use ros_essentials_cpp-srv:w instead.")
  (w m))

(cl:ensure-generic-function 'h-val :lambda-list '(m))
(cl:defmethod h-val ((m <AreaRectangle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_essentials_cpp-srv:h-val is deprecated.  Use ros_essentials_cpp-srv:h instead.")
  (h m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AreaRectangle-request>) ostream)
  "Serializes a message object of type '<AreaRectangle-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'h))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AreaRectangle-request>) istream)
  "Deserializes a message object of type '<AreaRectangle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'h) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AreaRectangle-request>)))
  "Returns string type for a service object of type '<AreaRectangle-request>"
  "ros_essentials_cpp/AreaRectangleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AreaRectangle-request)))
  "Returns string type for a service object of type 'AreaRectangle-request"
  "ros_essentials_cpp/AreaRectangleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AreaRectangle-request>)))
  "Returns md5sum for a message object of type '<AreaRectangle-request>"
  "acc8e380ccd62fbb09a40f869ff912e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AreaRectangle-request)))
  "Returns md5sum for a message object of type 'AreaRectangle-request"
  "acc8e380ccd62fbb09a40f869ff912e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AreaRectangle-request>)))
  "Returns full string definition for message of type '<AreaRectangle-request>"
  (cl:format cl:nil "float64 w~%float64 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AreaRectangle-request)))
  "Returns full string definition for message of type 'AreaRectangle-request"
  (cl:format cl:nil "float64 w~%float64 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AreaRectangle-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AreaRectangle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AreaRectangle-request
    (cl:cons ':w (w msg))
    (cl:cons ':h (h msg))
))
;//! \htmlinclude AreaRectangle-response.msg.html

(cl:defclass <AreaRectangle-response> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type cl:float
    :initform 0.0))
)

(cl:defclass AreaRectangle-response (<AreaRectangle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AreaRectangle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AreaRectangle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_essentials_cpp-srv:<AreaRectangle-response> is deprecated: use ros_essentials_cpp-srv:AreaRectangle-response instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <AreaRectangle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_essentials_cpp-srv:area-val is deprecated.  Use ros_essentials_cpp-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AreaRectangle-response>) ostream)
  "Serializes a message object of type '<AreaRectangle-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AreaRectangle-response>) istream)
  "Deserializes a message object of type '<AreaRectangle-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'area) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AreaRectangle-response>)))
  "Returns string type for a service object of type '<AreaRectangle-response>"
  "ros_essentials_cpp/AreaRectangleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AreaRectangle-response)))
  "Returns string type for a service object of type 'AreaRectangle-response"
  "ros_essentials_cpp/AreaRectangleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AreaRectangle-response>)))
  "Returns md5sum for a message object of type '<AreaRectangle-response>"
  "acc8e380ccd62fbb09a40f869ff912e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AreaRectangle-response)))
  "Returns md5sum for a message object of type 'AreaRectangle-response"
  "acc8e380ccd62fbb09a40f869ff912e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AreaRectangle-response>)))
  "Returns full string definition for message of type '<AreaRectangle-response>"
  (cl:format cl:nil "float64 area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AreaRectangle-response)))
  "Returns full string definition for message of type 'AreaRectangle-response"
  (cl:format cl:nil "float64 area~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AreaRectangle-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AreaRectangle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AreaRectangle-response
    (cl:cons ':area (area msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AreaRectangle)))
  'AreaRectangle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AreaRectangle)))
  'AreaRectangle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AreaRectangle)))
  "Returns string type for a service object of type '<AreaRectangle>"
  "ros_essentials_cpp/AreaRectangle")