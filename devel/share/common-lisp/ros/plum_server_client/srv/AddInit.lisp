; Auto-generated. Do not edit!


(cl:in-package plum_server_client-srv)


;//! \htmlinclude AddInit-request.msg.html

(cl:defclass <AddInit-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass AddInit-request (<AddInit-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddInit-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddInit-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plum_server_client-srv:<AddInit-request> is deprecated: use plum_server_client-srv:AddInit-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <AddInit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plum_server_client-srv:num1-val is deprecated.  Use plum_server_client-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <AddInit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plum_server_client-srv:num2-val is deprecated.  Use plum_server_client-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddInit-request>) ostream)
  "Serializes a message object of type '<AddInit-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddInit-request>) istream)
  "Deserializes a message object of type '<AddInit-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddInit-request>)))
  "Returns string type for a service object of type '<AddInit-request>"
  "plum_server_client/AddInitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddInit-request)))
  "Returns string type for a service object of type 'AddInit-request"
  "plum_server_client/AddInitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddInit-request>)))
  "Returns md5sum for a message object of type '<AddInit-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddInit-request)))
  "Returns md5sum for a message object of type 'AddInit-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddInit-request>)))
  "Returns full string definition for message of type '<AddInit-request>"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddInit-request)))
  "Returns full string definition for message of type 'AddInit-request"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddInit-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddInit-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddInit-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude AddInit-response.msg.html

(cl:defclass <AddInit-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass AddInit-response (<AddInit-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddInit-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddInit-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plum_server_client-srv:<AddInit-response> is deprecated: use plum_server_client-srv:AddInit-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <AddInit-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plum_server_client-srv:sum-val is deprecated.  Use plum_server_client-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddInit-response>) ostream)
  "Serializes a message object of type '<AddInit-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddInit-response>) istream)
  "Deserializes a message object of type '<AddInit-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddInit-response>)))
  "Returns string type for a service object of type '<AddInit-response>"
  "plum_server_client/AddInitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddInit-response)))
  "Returns string type for a service object of type 'AddInit-response"
  "plum_server_client/AddInitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddInit-response>)))
  "Returns md5sum for a message object of type '<AddInit-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddInit-response)))
  "Returns md5sum for a message object of type 'AddInit-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddInit-response>)))
  "Returns full string definition for message of type '<AddInit-response>"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddInit-response)))
  "Returns full string definition for message of type 'AddInit-response"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddInit-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddInit-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddInit-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddInit)))
  'AddInit-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddInit)))
  'AddInit-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddInit)))
  "Returns string type for a service object of type '<AddInit>"
  "plum_server_client/AddInit")