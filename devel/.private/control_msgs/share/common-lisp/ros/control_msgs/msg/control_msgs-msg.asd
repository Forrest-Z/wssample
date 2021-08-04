
(cl:in-package :asdf)

(defsystem "control_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ControlFSM" :depends-on ("_package_ControlFSM"))
    (:file "_package_ControlFSM" :depends-on ("_package"))
    (:file "HighspeedControl" :depends-on ("_package_HighspeedControl"))
    (:file "_package_HighspeedControl" :depends-on ("_package"))
    (:file "LowspeedControl" :depends-on ("_package_LowspeedControl"))
    (:file "_package_LowspeedControl" :depends-on ("_package"))
  ))