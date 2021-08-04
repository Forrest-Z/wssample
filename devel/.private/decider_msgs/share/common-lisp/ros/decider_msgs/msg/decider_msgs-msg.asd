
(cl:in-package :asdf)

(defsystem "decider_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Decider" :depends-on ("_package_Decider"))
    (:file "_package_Decider" :depends-on ("_package"))
  ))