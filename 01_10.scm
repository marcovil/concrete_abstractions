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
           
   