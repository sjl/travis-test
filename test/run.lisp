#+ecl (setf compiler:*user-cc-flags* "-Wno-shift-negative-value")

(when (uiop:getenv "CI")
  #+sbcl (sb-ext:disable-debugger))

(format t "meow 1")
(ql:quickload 'cl-digraph :verbose t)
(format t "wow 2")
(ql:quickload 'cl-digraph.test :verbose t)
(format t "hello 3")
(time (asdf:test-system 'cl-digraph))
(cl-user::quit)
