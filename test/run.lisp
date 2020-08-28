#+ecl (setf compiler:*user-cc-flags* "-Wno-shift-negative-value")

(when (uiop:getenv "CI")
  (setf *debugger-hook*
        (lambda (e dh)
          (declare (ignore dh))
          (format *error-output* "~2%FAILED:~2%~A~2%" e)
          (uiop:quit 1))))

(ql:quickload 'cl-digraph.test)
(time (asdf:test-system 'cl-digraph))
(uiop:quit 0)
