;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 02_05) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; use addition to write a procedure "multiply" that calculates
; the product of two integers
; (i.e., write * for integers in terms of +)

(define multiply
  (lambda (n m)
    (cond ((< n 0) (- (multiply (- n) m)))
          ((< m 0) (- (multiply n (- m))))
          ((= n 0) 0)
          ((= m 0) 0)
          ((= n 1) m)
          (else    (+ m (multiply (- n 1) m))))))

(multiply 2 3)
(multiply 1 4)
(multiply 2 4)
(multiply 6 8)
(multiply 0 1)
(multiply 1 0)
(multiply -2 5)
(multiply 6 -3)



        


