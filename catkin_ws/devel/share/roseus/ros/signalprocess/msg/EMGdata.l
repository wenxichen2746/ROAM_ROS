;; Auto-generated. Do not edit!


(when (boundp 'signalprocess::EMGdata)
  (if (not (find-package "SIGNALPROCESS"))
    (make-package "SIGNALPROCESS"))
  (shadow 'EMGdata (find-package "SIGNALPROCESS")))
(unless (find-package "SIGNALPROCESS::EMGDATA")
  (make-package "SIGNALPROCESS::EMGDATA"))

(in-package "ROS")
;;//! \htmlinclude EMGdata.msg.html


(defclass signalprocess::EMGdata
  :super ros::object
  :slots (_current_time _data ))

(defmethod signalprocess::EMGdata
  (:init
   (&key
    ((:current_time __current_time) "")
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _current_time (string __current_time))
   (setq _data __data)
   self)
  (:current_time
   (&optional __current_time)
   (if __current_time (setq _current_time __current_time)) _current_time)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _current_time
    4 (length _current_time)
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _current_time
       (write-long (length _current_time) s) (princ _current_time s)
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _current_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get signalprocess::EMGdata :md5sum-) "05db57eabda2aa74915fdeb4724bd1eb")
(setf (get signalprocess::EMGdata :datatype-) "signalprocess/EMGdata")
(setf (get signalprocess::EMGdata :definition-)
      "string current_time
float32[] data
")



(provide :signalprocess/EMGdata "05db57eabda2aa74915fdeb4724bd1eb")


