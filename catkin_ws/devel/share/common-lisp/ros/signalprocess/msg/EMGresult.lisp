; Auto-generated. Do not edit!


(cl:in-package signalprocess-msg)


;//! \htmlinclude EMGresult.msg.html

(cl:defclass <EMGresult> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass EMGresult (<EMGresult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EMGresult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EMGresult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name signalprocess-msg:<EMGresult> is deprecated: use signalprocess-msg:EMGresult instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EMGresult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signalprocess-msg:data-val is deprecated.  Use signalprocess-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EMGresult>) ostream)
  "Serializes a message object of type '<EMGresult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EMGresult>) istream)
  "Deserializes a message object of type '<EMGresult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EMGresult>)))
  "Returns string type for a message object of type '<EMGresult>"
  "signalprocess/EMGresult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EMGresult)))
  "Returns string type for a message object of type 'EMGresult"
  "signalprocess/EMGresult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EMGresult>)))
  "Returns md5sum for a message object of type '<EMGresult>"
  "420cd38b6b071cd49f2970c3e2cee511")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EMGresult)))
  "Returns md5sum for a message object of type 'EMGresult"
  "420cd38b6b071cd49f2970c3e2cee511")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EMGresult>)))
  "Returns full string definition for message of type '<EMGresult>"
  (cl:format cl:nil "float32[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EMGresult)))
  "Returns full string definition for message of type 'EMGresult"
  (cl:format cl:nil "float32[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EMGresult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EMGresult>))
  "Converts a ROS message object to a list"
  (cl:list 'EMGresult
    (cl:cons ':data (data msg))
))
