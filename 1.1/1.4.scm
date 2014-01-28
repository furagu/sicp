; The operator to apply on the arguments is chosen based on the value of argument b.

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
