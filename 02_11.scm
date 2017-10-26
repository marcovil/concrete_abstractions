(define sumdigits
  (lambda (n)
    (if (< n 0)
        (sumdigits (- n))
        (if (= n 0)
            0
            (+
             (remainder n 10)
             (sumdigits (quotient n 10)))))))

(sumdigits 126546)
(sumdigits -126546)
(sumdigits 0)
(sumdigits 1)
(sumdigits 6)
(sumdigits 432)
(sumdigits 666766616)


        