
(cl:in-package :asdf)

(defsystem "ros_essentials_cpp-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "RectangleAreaService" :depends-on ("_package_RectangleAreaService"))
    (:file "_package_RectangleAreaService" :depends-on ("_package"))
  ))