
(cl:in-package :asdf)

(defsystem "g29_socket_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "G29Socket" :depends-on ("_package_G29Socket"))
    (:file "_package_G29Socket" :depends-on ("_package"))
  ))