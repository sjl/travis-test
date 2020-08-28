#+ecl (setf compiler:*user-cc-flags* "-Wno-shift-negative-value")

;; (when (uiop:getenv "CI")
;;   #+sbcl (sb-ext:disable-debugger))
(setf *debugger-hook*
      (lambda (e dh)
        (format t "~A" e)
        (uiop:quit 1)))

(ql:quickload 'cl-digraph.test :verbose t)
(time (asdf:test-system 'cl-digraph))
(uiop:quit 0)
