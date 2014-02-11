; Write a procedure that computes elements of Pascal's triangle by means of a recursive process.

; First we need to undestand how to address the elenments of the Pascal's triangle.
; The way is to enumerate elements by row and column starting top-left.
; The triangle starts with row number one which holds the only column filled with element '1'.
; The row number two holds two columns filled with '1'.
; The third row holds three columns filled with '1', '2' and '1', and so on.

; With that enumeration every element of the Pascal's triangle could be defined by this set of rules:
; The element at (row, col) position is equal to:
;   1 when col = 1 or col = row. These are the elements at the edges of the triangle.
;   (element at (row - 1, col -1) + element at (row - 1, col)). These are the sums of the two elements above.
; The procedure is straightforward:

(define (pt-element row col)
  (if (or (= col 1) (= col row))
      1
      (+(pt-element (- row 1) (- col 1))
        (pt-element (- row 1) col))))

; Let's make a procedure to print the N rows of the Pascal's triangle.

(define (pt rows)
  (pt-iter rows 1))

(define (pt-iter rows row)
  (pt-row row)
  (if (< row rows) (pt-iter rows (+ row 1))))

(define (pt-row row)
  (pt-row-iter row 1)
  (newline))

(define (pt-row-iter row col)
  (display (pt-element row col))
  (display " ")
  (if (< col row) (pt-row-iter row (+ col 1))))

; Here we go!
(pt 20)
