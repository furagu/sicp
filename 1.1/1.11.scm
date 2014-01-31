; A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3.

; Write a procedure that computes f by means of a recursive process.

; It is pretty straightforward:

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(display (f 10))
(newline)


; Write a procedure that computes f by means of an iterative process.

; The first thing to do is to figure out an iterative process of computing f(n).
; This is how the formula works for different values of n:
;
; f(0) = 0
; f(1) = 1
; f(2) = 2
; f(3) =  2  +  2 *  1  +  3 * 0 =  4
; f(4) =  4  +  2 *  2  +  3 * 1 = 11
; f(5) = 11  +  2 *  4  +  3 * 2 = 25
; f(6) = 25  +  2 * 11  +  3 * 4 = 59
;
; Let's introduce the summands of the formula: a, b and c.
; Assuming that n > 2 and the summands are holding the values of the previous iteration,
; the next iteration summands are calculated like this:
;
; next-a = a + 2b + 3c
; next-b = a
; next-c = b
;
; So, if we start with a=2, b=1, c=0 and repeat the procedure for n-2 times,
; we will get a = f(n).

(define (f n)
  (if (< n 3)
      n
      (f-iter 2 1 0 (- n 2))))

(define (f-iter a b c n)
  (if (= n 0)
      a
      (f-iter (+ a (* 2 b) (* 3 c)) a b (- n 1))))

(display (f 10))
(newline)
