
(cl:in-package :asdf)

(defsystem "g29_teledrive_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "G29_teledrive" :depends-on ("_package_G29_teledrive"))
    (:file "_package_G29_teledrive" :depends-on ("_package"))
    (:file "G29_teledrive" :depends-on ("_package_G29_teledrive"))
    (:file "_package_G29_teledrive" :depends-on ("_package"))
  ))