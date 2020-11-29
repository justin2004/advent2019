; part 2 prep
(april "({⍵÷3}⍣1) 100")
(april "f←{⍵÷3} ")
(april "(f⍣5) 100") (april "(⍳⌈3⍟100) ∘.f 100") (april "⍳⌈3⍟100")
(april "(⍳⌈3⍟100) {(f⍣⍺)⍵} 100")
(april "(⍳⌈3⍟100) {(f⍣⍺)⍵}¨ 100")
(april "1 2 {⍺+⍵} 100")
(april "(⍳4) {(f⍣⍺)⍵}¨ 100")
(april "1 {(f⍣⍺)⍵}¨ 100") ; nil
(april "1 2 f¨ 100")
(april "1 {⍵÷3}¨ 10")
(april "1 2 3 {⍵÷3} 100")
(april "f←{⍵÷3}")
(april "f f 100")
; 33583 + 11192 + 3728 + 1240 + 411 + 135 + 43 + 12 + 2 = 50346 ;; 100756
(april "f f f 100756")

; works on one
(april "mass←100756
        successive_results←(⍳⌈3⍟mass) {(f⍣⍺)⍵}¨ mass
        +/(successive_results>0)/successive_results")



(april "f←{⎕←a←(⌊⍵÷3)-2⋄⎕←' ' ⋄
           $[a≥0;a,f a;0]}")
(april "f 90")

(april "f←{⎕←a←⍵-1⋄⎕←' '⋄ $[a≥0;a,f a;0]}")
(april "f 5")


(april "f←{((⍵∊0 1)+1)⊃'no' 'yes'}
              f¨⍳5")

(april "f←{((⍵∊0 1)+1)⊃'no' ⍎ '6-1' }
              f 1")

(april "⍎ '4'")
(april "v←1 2 3⋄ ⍎ 'v'")
(april (demo))

(april "f←{((⍵∊0 1)+1)⊃'no' (⍎ '∇ ⍵-1') }
              f 1")
(april "f←{$[⍵=0;1;⍵ × (f ⍵-1)]}
        f 3")



(april "fib←{⊃(+/,⊃)⍣⍵⊢1}")
(april "fib←{(+/,⊃)⍣1 ⍵}")
(april "fib 8")

; equiv
(april-f "(↓⍣1)2 2 ⍴ ⍳4")
(april "≢↓↓2 2 ⍴ ⍳4")
(april-f "↓↓2 2 ⍴ ⍳4")

(april-f "(↓⍣2)2 2 ⍴ ⍳4")

(april "1 +∘÷⍣= 1")

(april "f ← (32∘+)∘(×∘1.8)")
(april "c ← f⍣¯1")
(april "c 212")

(april "(32∘+)∘(×∘1.8)⍣¯1⊢212")
(april "(32∘+)∘(×∘1.8) 100")
(april-f "1 2 ∘.+ 1 2")
(april-f "1 2 +∘, 3 4")
(april-f "1 2 ∘., 3 4")


(april "f←{⎕←a←⍵-1⋄⎕←' '⋄ $[a≥0;a+f a;0]}")
(april "f←{⎕←a←⍵-1⋄⎕←' '⋄ $[a>0;a+f a;0]}")
(april "f 5")

(april (demo))

(april "(10 20 30@1 2 10)⍳10")


(april "(-⍤÷) 4")
(april "(-⍤0) 4")

12 -⍤÷ 4   ⍝ (x f⍤g y) ≡ (f x g y)

(april "⎕←cube←2 2 3 ⍴ ⍳100")
(april "⎕←cube←2 3 ⍴ ⍳100") ; vols rows cols ;  rows cols
(april-f "cube")
(april-f "(,⍤3) cube")
(april-f "⍴ cube")

(april "a←2 2 ⍴⍳4")
(april "b←2 2 ⍴4+⍳4")

(april-f "a,[1]b")
(april-f "+/[1]a")

;;;;;;;;
(in-package :april)
; sum of digits
; work
(april "(⌈10⍟1234)")
(april "f←{⌊10.0|(⍵÷1000)}")
(april "1,(10*⍳¯1+⌈10⍟1234)")
(april "(g 1239) f 1239") ;  (g⍵) h ⍵
(april "1,(10*⍳¯1+⌈10⍟1234)")
(april "(10*⍳⌈10⍟1234)")
(april "10|1234")

(april "g 21010111")
(april "100 f 21010111")
(april "100.0 {⌊10.0|(⍵÷⍺)} 123")
(april "(10.0)|21010111÷1") 

; answer
(april "f←{⌊10|(⍵÷⍺)}")
(april "g←{1,(10*⍳¯1+⌈10⍟⍵)}")
(april "(g f ⊢) 21010111")
(april "+/(g f ⊢) 21010111")




