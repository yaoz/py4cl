;;;; py4cl.asd

(asdf:defsystem #:py4cl
  :serial t
  :description "Call Python libraries from Common Lisp"
  :author "Ben Dudson <benjamin.dudson@york.ac.uk>"
  :license "MIT"
  :depends-on ()
  :pathname #P"src/"
  :components ((:file "package")
               (:file "reader")
               (:file "writer")
               (:file "callbacks")
               (:file "callpython")))

;; This is to store the path to the source code
;; suggested here https://xach.livejournal.com/294639.html
(defpackage #:py4cl-config (:export #:*base-directory*))
(defparameter py4cl-config:*base-directory* 
  (make-pathname :name nil :type nil :defaults *load-truename*))
