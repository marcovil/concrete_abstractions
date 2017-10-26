(define count6s
  (lambda (n)
    (if (< n 0)
        (count6s (- n))
        (if (= n 0)
            0
            (+
             (if (= (remainder n 10) 6)
                 1
                 0)
             (count6s (quotient n 10)))))))

(count6s 126546)
(count6s -126546)
(count6s 0)
(count6s 1)
(count6s 6)
(count6s 666766616)

(define countds
  (lambda (n d)
    (if (< n 0)
        (countds (- n) d)
        (if (= n 0)
            0
            (+
             (if (= (remainder n 10) d)
                 1
                 0)
             (countds (quotient n 10) d))))))

(countds 1234145 4)
(countds 1900030 0)