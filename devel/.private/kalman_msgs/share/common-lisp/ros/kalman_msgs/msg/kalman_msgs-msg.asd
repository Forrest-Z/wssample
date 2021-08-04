
(cl:in-package :asdf)

(defsystem "kalman_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Kinematics" :depends-on ("_package_Kinematics"))
    (:file "_package_Kinematics" :depends-on ("_package"))
  ))