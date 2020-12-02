(ql:quickload :april)
(in-package :april)

(setf *i* (with-open-file (s "day2/input_newlines.txt" 
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
(april "input[2]←12 ⋄ input[3]←2")
(april "f←{$[99=⍺[⍵];0; ⍺[1+⍺[⍵+3]]←⍺[⍵]⊃⍺[⍺[⍵+1]+1](+,×)⍺[⍺[⍵+2]+1] ⋄ ⍺ f 4+⍵]}")
; i wanted to avoid if statements but i don't know how else to do a recursive function
; with a base case :/
(april "input f 1 ⋄ input[1]")
