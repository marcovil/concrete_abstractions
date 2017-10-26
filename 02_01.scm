; exponent is a nonnegative integer

(define power
  (lambda (base exponent)
    (if (= exponent 0)
        1
        (* base (power base (- exponent 1))))))

; some tests
(power 2 0)
(power 2 1)
(power 2 2)
(power 2 3)
(power 2 4)
(power 3 0)
(power 3 1)
(power 3 2)
(power 3 3)
(power 3 4)
