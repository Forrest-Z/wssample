
(cl:in-package :asdf)

(defsystem "perception_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DriveArea" :depends-on ("_package_DriveArea"))
    (:file "_package_DriveArea" :depends-on ("_package"))
    (:file "Obj" :depends-on ("_package_Obj"))
    (:file "_package_Obj" :depends-on ("_package"))
    (:file "Objs" :depends-on ("_package_Objs"))
    (:file "_package_Objs" :depends-on ("_package"))
  ))