#lang sicp

(#%require rackunit)
; a + |b| 
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; test 1-3 
(check-equal? (a-plus-abs-b 4 5) 9)
(check-equal? (a-plus-abs-b 4 -5) 9)
(check-equal? (a-plus-abs-b 4 0) 4)