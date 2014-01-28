; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (sum-of-squares-of-two-larger a b c)
  (cond ((and (<= a b) (<= a c)) (+ (* b b) (* c c)))
        ((and (<= b a) (<= b c)) (+ (* a a) (* c c)))
        (else (+ (* a a) (* b b)))))

(display (sum-of-squares-of-two-larger 1 2 3))
