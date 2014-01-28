; What behavior will Ben observe with an interpreter that uses applicative-order/normal-order evaluation?

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; (test 0 (p))

; Applicative-order interpretator will first evaluate the arguments.
; This process will take forever evaluating (p).

; Normal-order interpretator will first substitute all the definitions ending up with (if (= 0 0) 0 (p)).
; Then, the if operator will evaluate the condition and choose to evaluate the first expression, leaving the endless evaluation trap of (p).
