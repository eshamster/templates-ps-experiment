(defpackage {{name}}/js
  (:use :cl
        :ps-experiment
        :parenscript))
(in-package :{{name}}/js)

;; --- the followings are only sample --- ;;

(defun.ps+ test (x)
  (+ x 100))

(def-top-level-form.ps abc
  (alert (test 1000)))

