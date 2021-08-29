;; Auto-generated. Do not edit!


(when (boundp 'test3::turtlesrv)
  (if (not (find-package "TEST3"))
    (make-package "TEST3"))
  (shadow 'turtlesrv (find-package "TEST3")))
(unless (find-package "TEST3::TURTLESRV")
  (make-package "TEST3::TURTLESRV"))
(unless (find-package "TEST3::TURTLESRVREQUEST")
  (make-package "TEST3::TURTLESRVREQUEST"))
(unless (find-package "TEST3::TURTLESRVRESPONSE")
  (make-package "TEST3::TURTLESRVRESPONSE"))

(in-package "ROS")





(defclass test3::turtlesrvRequest
  :super ros::object
  :slots (_data _turtlename _x _z ))

(defmethod test3::turtlesrvRequest
  (:init
   (&key
    ((:data __data) nil)
    ((:turtlename __turtlename) "")
    ((:x __x) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _data __data)
   (setq _turtlename (string __turtlename))
   (setq _x (float __x))
   (setq _z (float __z))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:turtlename
   (&optional __turtlename)
   (if __turtlename (setq _turtlename __turtlename)) _turtlename)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ;; string _turtlename
    4 (length _turtlename)
    ;; float64 _x
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;; string _turtlename
       (write-long (length _turtlename) s) (princ _turtlename s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _turtlename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _turtlename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass test3::turtlesrvResponse
  :super ros::object
  :slots (_success ))

(defmethod test3::turtlesrvResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass test3::turtlesrv
  :super ros::object
  :slots ())

(setf (get test3::turtlesrv :md5sum-) "cbc75de5a4fb9f83b2d98718a6d2f59b")
(setf (get test3::turtlesrv :datatype-) "test3/turtlesrv")
(setf (get test3::turtlesrv :request) test3::turtlesrvRequest)
(setf (get test3::turtlesrv :response) test3::turtlesrvResponse)

(defmethod test3::turtlesrvRequest
  (:response () (instance test3::turtlesrvResponse :init)))

(setf (get test3::turtlesrvRequest :md5sum-) "cbc75de5a4fb9f83b2d98718a6d2f59b")
(setf (get test3::turtlesrvRequest :datatype-) "test3/turtlesrvRequest")
(setf (get test3::turtlesrvRequest :definition-)
      "bool data
string turtlename
float64 x
float64 z
---
bool success

")

(setf (get test3::turtlesrvResponse :md5sum-) "cbc75de5a4fb9f83b2d98718a6d2f59b")
(setf (get test3::turtlesrvResponse :datatype-) "test3/turtlesrvResponse")
(setf (get test3::turtlesrvResponse :definition-)
      "bool data
string turtlename
float64 x
float64 z
---
bool success

")



(provide :test3/turtlesrv "cbc75de5a4fb9f83b2d98718a6d2f59b")


