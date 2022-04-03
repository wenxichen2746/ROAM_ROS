
(cl:in-package :asdf)

(defsystem "signalprocess-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EMGdata" :depends-on ("_package_EMGdata"))
    (:file "_package_EMGdata" :depends-on ("_package"))
    (:file "EMGresult" :depends-on ("_package_EMGresult"))
    (:file "_package_EMGresult" :depends-on ("_package"))
  ))