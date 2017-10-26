;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 02_04) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define square
  (lambda (n)
    (if (= n 0)
        0
        (if (even? n)
            (* (square (/ n 2))
                       4)
            (+ (square (- n 1))
               (- (+ n n) 1))))))