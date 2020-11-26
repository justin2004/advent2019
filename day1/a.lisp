(ql:quickload :april)
(ql:quickload :alexandria)

(setf *i* (with-open-file (s "input.txt" 
                   :direction :input)
  (loop 
    :for line = (read-line s nil)
    :while (not (null line))
    :collect line)))


; part 1
(april:april (with (:state :in 
                    ((i (coerce (mapcar #'parse-integer *i*) 
                                'vector)))) )
             "+/(⌊i÷3)-2")

