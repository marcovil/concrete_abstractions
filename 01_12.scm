(define f
  (lambda (x y)
    (if (even? x)
        7
        (* x y))))

; (f 1 16) produces 16

(f 1 16)