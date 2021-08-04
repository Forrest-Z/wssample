
(cl:in-package :asdf)

(defsystem "teledrive_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Tli65Teledrive" :depends-on ("_package_Tli65Teledrive"))
    (:file "_package_Tli65Teledrive" :depends-on ("_package"))
  ))