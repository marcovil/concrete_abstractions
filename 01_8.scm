(require (lib "fungraph.ss" "concabs"))
(load "quilting.scm")

(stack rcross-bb corner-bb)
(quarter-turn-right test-bb)

(stack (stack rcross-bb corner-bb) test-bb)
(stack (stack rcross-bb corner-bb)
       (stack (quarter-turn-right test-bb) test-bb))

; "stack" puts an image on top of the other, "quarter-turn-right" turns the image 90° to the right
; if you nest many "stack" primitives you can stack more images one on top of the other 