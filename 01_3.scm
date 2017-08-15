;a. In the text example we defined f and square in exactly the same way. What happens if we redefine f?
;   Does the procedure associated with square change also?

; No, it doesn't

(define f
  (lambda (x) (* x x)))
(define square
  (lambda (x) (* x x)))
(f 4)
(square 4)
(define f
  (lambda (x) (/ x 2)))
(f 4)
(square 4)

;b. Suppose we wrote:

(define f
  (lambda (x) (* x x)))
(define square
  f)
; f gets evaluated as (lambda (x) (* x x))
(f 7)

(square 7)

(define f (lambda (x) (+ x 2)))
(f 7)

(square 7)



