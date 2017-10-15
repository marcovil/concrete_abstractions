#|Write a succinct English description of the effect of each of the following procedures.
Try to express what each calculates, not how it calculates that.

a.

(define puzzle1
  (lambda (a b c)
    (+ a (if (> b c)
             b
             c))))

b.

(define puzzle2
  (lambda (x)
    ((if (< x 0)
         -
         +)
     0 x)))
|#

; a. is a procedure that accepts three variables, and sums a with the largest between b and c
; (c if b and c are equal)

; b. is a procedure that accepts one variable, and returns its absolute value