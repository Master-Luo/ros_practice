; Auto-generated. Do not edit!


(cl:in-package test3-srv)


;//! \htmlinclude turtlesrv-request.msg.html

(cl:defclass <turtlesrv-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil)
   (turtlename
    :reader turtlename
    :initarg :turtlename
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass turtlesrv-request (<turtlesrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtlesrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtlesrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test3-srv:<turtlesrv-request> is deprecated: use test3-srv:turtlesrv-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <turtlesrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test3-srv:data-val is deprecated.  Use test3-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'turtlename-val :lambda-list '(m))
(cl:defmethod turtlename-val ((m <turtlesrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test3-srv:turtlename-val is deprecated.  Use test3-srv:turtlename instead.")
  (turtlename m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <turtlesrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test3-srv:x-val is deprecated.  Use test3-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <turtlesrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test3-srv:z-val is deprecated.  Use test3-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtlesrv-request>) ostream)
  "Serializes a message object of type '<turtlesrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turtlename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turtlename))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtlesrv-request>) istream)
  "Deserializes a message object of type '<turtlesrv-request>"
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turtlename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'turtlename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtlesrv-request>)))
  "Returns string type for a service object of type '<turtlesrv-request>"
  "test3/turtlesrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtlesrv-request)))
  "Returns string type for a service object of type 'turtlesrv-request"
  "test3/turtlesrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtlesrv-request>)))
  "Returns md5sum for a message object of type '<turtlesrv-request>"
  "cbc75de5a4fb9f83b2d98718a6d2f59b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtlesrv-request)))
  "Returns md5sum for a message object of type 'turtlesrv-request"
  "cbc75de5a4fb9f83b2d98718a6d2f59b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtlesrv-request>)))
  "Returns full string definition for message of type '<turtlesrv-request>"
  (cl:format cl:nil "bool data~%string turtlename~%float64 x~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtlesrv-request)))
  "Returns full string definition for message of type 'turtlesrv-request"
  (cl:format cl:nil "bool data~%string turtlename~%float64 x~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtlesrv-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'turtlename))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtlesrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'turtlesrv-request
    (cl:cons ':data (data msg))
    (cl:cons ':turtlename (turtlename msg))
    (cl:cons ':x (x msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude turtlesrv-response.msg.html

(cl:defclass <turtlesrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass turtlesrv-response (<turtlesrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtlesrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtlesrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test3-srv:<turtlesrv-response> is deprecated: use test3-srv:turtlesrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <turtlesrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test3-srv:success-val is deprecated.  Use test3-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtlesrv-response>) ostream)
  "Serializes a message object of type '<turtlesrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtlesrv-response>) istream)
  "Deserializes a message object of type '<turtlesrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtlesrv-response>)))
  "Returns string type for a service object of type '<turtlesrv-response>"
  "test3/turtlesrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtlesrv-response)))
  "Returns string type for a service object of type 'turtlesrv-response"
  "test3/turtlesrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtlesrv-response>)))
  "Returns md5sum for a message object of type '<turtlesrv-response>"
  "cbc75de5a4fb9f83b2d98718a6d2f59b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtlesrv-response)))
  "Returns md5sum for a message object of type 'turtlesrv-response"
  "cbc75de5a4fb9f83b2d98718a6d2f59b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtlesrv-response>)))
  "Returns full string definition for message of type '<turtlesrv-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtlesrv-response)))
  "Returns full string definition for message of type 'turtlesrv-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtlesrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtlesrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'turtlesrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'turtlesrv)))
  'turtlesrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'turtlesrv)))
  'turtlesrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtlesrv)))
  "Returns string type for a service object of type '<turtlesrv>"
  "test3/turtlesrv")