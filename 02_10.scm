(define countodds
  (lambda (n)
    (if (< n 0)
        (countodds (- n))
        (if (= n 0)
            0
            (+
             (if (odd? (remainder n 10))
                 1
                 0)
             (countodds (quotient n 10)))))))

(countodds 126546)
(countodds -126546)
(countodds 0)
(countodds 1)
(countodds 6)
(countodds 666766616)
