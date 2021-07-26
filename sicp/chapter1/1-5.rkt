#lang sicp

(#%require rackunit)

(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

;Using normal-order evaluation program runs succesfully
;Using applicative-order evaluation program never terminates
(check-equal& (test 0 (p)) 0)
