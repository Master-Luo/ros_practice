
(cl:in-package :asdf)

(defsystem "test3-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "turtlesrv" :depends-on ("_package_turtlesrv"))
    (:file "_package_turtlesrv" :depends-on ("_package"))
  ))