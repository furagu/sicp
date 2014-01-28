; An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration
; to the next and to stop when the change is a very small fraction of the guess.
; Design a square-root procedure that uses this kind of end test.

(load "./chapter.scm")

(define (sqrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess previous-guess)
  (< (/ (abs (- guess previous-guess)) guess) 0.001)) ; stop when guess changes by less then 0.1% of it's value

(define (sqrt x)
  (sqrt-iter 1.0 x x))

(display (sqrt 0.002)) ; displays accurate result
