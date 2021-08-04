
(cl:in-package :asdf)

(defsystem "displaydata_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DisplayData" :depends-on ("_package_DisplayData"))
    (:file "_package_DisplayData" :depends-on ("_package"))
  ))