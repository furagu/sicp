(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

; What are the values of the following expressions?

(A 1 10)

(A 0 (A 1 9))
(A 0 (A 0 (A 1 8)))
(A 0 (A 0 (A 0 (A 1 7))))
...
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))
...
(A 0 512)
1024


(A 2 4)

(A 1 (A 2 3))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2))) ; (A 1 X) is 2^X as seen from the first expression!
(A 1 (A 1 4))
(A 1 16)
65536

2^(2^(2^2))


(A 3 3)

(A 2 (A 3 2))
(A 2 (A 2 (A 3 1)))
(A 2 (A 2 2))
(A 2 4)
65536

(define (f n) (A 0 n)) ; f(x) = 2x
(define (g n) (A 1 n)) ; g(x) = 2 ^ x
(define (h n) (A 2 n)) ; h(x) = 2 if x = 1 ; 2 ^ h(x - 1) if x > 1
