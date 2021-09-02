
(cl:in-package :asdf)

(defsystem "frontend_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Frontend_TLdisplay" :depends-on ("_package_Frontend_TLdisplay"))
    (:file "_package_Frontend_TLdisplay" :depends-on ("_package"))
    (:file "Frontend_control" :depends-on ("_package_Frontend_control"))
    (:file "_package_Frontend_control" :depends-on ("_package"))
  ))