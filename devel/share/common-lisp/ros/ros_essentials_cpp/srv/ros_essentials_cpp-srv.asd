
(cl:in-package :asdf)

(defsystem "ros_essentials_cpp-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "AreaRectangle" :depends-on ("_package_AreaRectangle"))
    (:file "_package_AreaRectangle" :depends-on ("_package"))
  ))