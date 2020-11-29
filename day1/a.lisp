(ql:quickload :april)
(ql:quickload :alexandria)

(in-package :april)

(setf *i* (with-open-file (s "input.txt" 
                   :direction :input)
  (loop 
    :for line = (read-line s nil)
    :while (not (null line))
    :collect line)))


; get the input into april
(april:april (with (:state :in 
                    ((i (coerce (mapcar #'parse-integer *i*) 
                                'vector)))) )
             "input←i")

; part 1
(april:april "+/(⌊input÷3)-2")



;part 2
; i can't use recursive functions until this is fixed
; https://github.com/phantomics/april/issues/84
(april "f←{(⌊⍵÷3)-2}")
(april "bigf←{mass←⍵
              successive_results←(⍳⌈3⍟mass) {(f⍣⍺)⍵}¨ mass
              +/(successive_results>0)/successive_results}")

(april:april "+/bigf¨ input")


