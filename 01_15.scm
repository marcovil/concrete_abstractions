; What could be filled into the blank in the following procedure to ensure that no
; division by zero occurs when the procedure is applied? Give several different answers.

(define foo
  (lambda (x y)
    (if
     (+ x y)
     (/ x y))))

; (= y 0) , #t, (<= y 0), (>= y 0)