(define find-exponent
  (lambda (n)
    (cond ((odd? n) 0)
          ((= n 0)  0)
          (else (+ 1 (find-exponent (/ n 2)))))))

(find-exponent 42)
(find-exponent 40)
(find-exponent 1)
(find-exponent 2)
(find-exponent 18)