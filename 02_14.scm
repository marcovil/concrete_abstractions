(require (lib "fungraph.ss" "concabs"))
(load "quilting.scm")

(define half-turn
  (lambda (image)
    (quarter-turn-right (quarter-turn-right image))))

(define quarter-turn-left
  (lambda (image)
    (half-turn (quarter-turn-right image))))

(define side-by-side
  (lambda (img1 img2)
    (quarter-turn-left (stack (quarter-turn-right img1) (quarter-turn-right img2)))))

(define pinwheel
  (lambda (image)
    (stack (side-by-side (quarter-turn-right image) (half-turn image))
           (side-by-side image (quarter-turn-left image)))))

(define stack-copies-of
  (lambda (n image)
    (if (= n 1)
        image
        (stack image (stack-copies-of (- n 1) image)))))

(define quilt
  (lambda (image w h)
    (if (= w 1)
        (stack-copies-of h image)
        (side-by-side (stack-copies-of h image) (quilt image (- w 1) h)))))
            

        

        
