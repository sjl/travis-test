#+ecl (setf compiler:*user-cc-flags* "-Wno-shift-negative-value")

(ql:quickload 'cl-digraph.test)
(time (asdf:test-system 'cl-digraph))
(uiop:quit 0)
