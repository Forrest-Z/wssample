
(cl:in-package :asdf)

(defsystem "localization_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "SteerSpeedYawRate" :depends-on ("_package_SteerSpeedYawRate"))
    (:file "_package_SteerSpeedYawRate" :depends-on ("_package"))
  ))