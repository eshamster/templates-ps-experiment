(DEFPACKAGE :ROSWELL.INIT.SIMPLE-PS-EXPERIMENT
  (:USE :CL))
(IN-PACKAGE :ROSWELL.INIT.SIMPLE-PS-EXPERIMENT)
(DEFVAR *PARAMS*
  '(:FILES
    ((:NAME "_name_.asd" :METHOD "djula" :REWRITE "{{name}}/{{name}}.asd")
     (:NAME "qlfile.lock" :METHOD "djula" :REWRITE "{{name}}/qlfile.lock")
     (:NAME "README.markdown" :METHOD "djula" :REWRITE
      "{{name}}/README.markdown")
     (:NAME ".gitignore" :METHOD "djula" :REWRITE "{{name}}/.gitignore")
     (:NAME "qlfile" :METHOD "djula" :REWRITE "{{name}}/qlfile")
     (:NAME "t/main.lisp" :METHOD "djula" :REWRITE
      "{{name}}/t/main.lisp") 
     (:NAME "main.lisp" :METHOD "djula" :REWRITE
      "{{name}}/main.lisp")
     (:NAME "js.lisp" :METHOD "djula" :REWRITE
      "{{name}}/js.lisp")
     (:NAME "server.lisp" :METHOD "djula" :REWRITE
      "{{name}}/server.lisp"))))
(DEFUN SIMPLE-PS-EXPERIMENT (_ &REST R)
  (ASDF/OPERATE:LOAD-SYSTEM :ROSWELL.UTIL.TEMPLATE :VERBOSE NIL)
  (FUNCALL (READ-FROM-STRING "roswell.util.template:template-apply") _ R
           *PARAMS*))
