; Auto-generated. Do not edit!


(cl:in-package signalprocess-msg)


;//! \htmlinclude EMGdata.msg.html

(cl:defclass <EMGdata> (roslisp-msg-protocol:ros-message)
  ((current_time
    :reader current_time
    :initarg :current_time
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass EMGdata (<EMGdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EMGdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EMGdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name signalprocess-msg:<EMGdata> is deprecated: use signalprocess-msg:EMGdata instead.")))

(cl:ensure-generic-function 'current_time-val :lambda-list '(m))
(cl:defmethod current_time-val ((m <EMGdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signalprocess-msg:current_time-val is deprecated.  Use signalprocess-msg:current_time instead.")
  (current_time m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EMGdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader signalprocess-msg:data-val is deprecated.  Use signalprocess-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EMGdata>) ostream)
  "Serializes a message object of type '<EMGdata>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_time))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EMGdata>) istream)
  "Deserializes a message object of type '<EMGdata>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EMGdata>)))
  "Returns string type for a message object of type '<EMGdata>"
  "signalprocess/EMGdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EMGdata)))
  "Returns string type for a message object of type 'EMGdata"
  "signalprocess/EMGdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EMGdata>)))
  "Returns md5sum for a message object of type '<EMGdata>"
  "05db57eabda2aa74915fdeb4724bd1eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EMGdata)))
  "Returns md5sum for a message object of type 'EMGdata"
  "05db57eabda2aa74915fdeb4724bd1eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EMGdata>)))
  "Returns full string definition for message of type '<EMGdata>"
  (cl:format cl:nil "string current_time~%float32[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EMGdata)))
  "Returns full string definition for message of type 'EMGdata"
  (cl:format cl:nil "string current_time~%float32[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EMGdata>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_time))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EMGdata>))
  "Converts a ROS message object to a list"
  (cl:list 'EMGdata
    (cl:cons ':current_time (current_time msg))
    (cl:cons ':data (data msg))
))
