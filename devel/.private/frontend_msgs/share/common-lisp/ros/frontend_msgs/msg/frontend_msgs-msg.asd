
(cl:in-package :asdf)

(defsystem "frontend_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Frontend" :depends-on ("_package_Frontend"))
    (:file "_package_Frontend" :depends-on ("_package"))
  ))