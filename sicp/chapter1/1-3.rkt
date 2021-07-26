#lang sicp

(#%require rackunit)

( define (solution x y z)
         (define (square w) (* w w))
         (cond [(and (>= x z) (>= y z)) (+ (square x) (square y))]
               [(and (>= x y) (>= z y)) (+ (square x) (square z))]
               [else (+ (square y) (square z))]
          ))

; test 1-5
(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 4 2 3) 25)
(check-equal? (solution 0 0 0) 0)
(check-equal? (solution 1 0 1) 2)
(check-equal? (solution 2 3 0) 13)