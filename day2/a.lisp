(ql:quickload :april)
(ql:quickload :cl-ppcre)
(ql:quickload :str)


(in-package :april)

(setf *i* (with-open-file (s "day2/input_newlines.txt" 
                   :direction :input)
  (loop 
    :for line = (read-line s nil)
    :while (not (null line))
    :collect line)))

*i*

(format nil "hello~%bye")

(format nil "~A" (str:replace-all "," "\n" (first *i*)))

(format t "~A" (regex-replace-all "," 
                   (first *i*)
                   "\\n"))


; get the input into april
(april:april (with (:state :in 
                    ((i (coerce (mapcar #'parse-integer *i*) 
                                'vector)))) )
             "input←i")

(april "input")


; 1,0,0,0,99
(april "a←1 0 0 0 99")
; 1,1,1,4,99,5,6,0,99   becomes 30,1,1,4,2,5,6,0,99.
(april "a←1 1 1 4 99 5 6 0 99")
(april "idx←1")
; (april "a[3]←a[1]⊃a[a[2]+1](+,×)a[a[3]+1]") ; works for 1 operator
(april "a[1+a[idx+3]]←a[idx]⊃a[a[idx+1]+1](+,×)a[a[idx+2]+1]")
(april "f←{$[99=⍺[⍵];0; ⍺[1+⍺[⍵+3]]←⍺[⍵]⊃⍺[⍺[⍵+1]+1](+,×)⍺[⍺[⍵+2]+1] ⋄ ⍺ f 4+⍵]}")
(april "a f 1")
(april "idx←idx+4")
(april "a[idx]")
(april "a")
(april "idx")
