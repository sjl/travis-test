#+ecl (setf compiler:*user-cc-flags* "-Wno-shift-negative-value")

(when (uiop:getenv "CI")
  #+sbcl (sb-ext:disable-debugger))

(ql:quickload 'cl-digraph.test :verbose t)
(time (asdf:test-system 'cl-digraph))
(uiop:quit)
