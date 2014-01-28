; Use given formula to implement a cube-root procedure analogous to the square-root procedure.

(load "./chapter.scm")

(define (cbrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (cbrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess previous-guess)
  (< (/ (abs (- guess previous-guess)) guess) 0.0001))

(define (cbrt x)
  (cbrt-iter 1.0 x x))

(display (cbrt 27))
