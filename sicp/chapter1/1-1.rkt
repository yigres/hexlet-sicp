#lang sicp

(#%require rackunit)

; 1
(check-equal? 10 10)

; 2
(check-equal? (+ 5 3 4) 12)

; 3
(check-equal? (- 9 1) 8)

; 4
(check-equal? (/ 6 2) 3)

; 5
(check-equal? (+ (* 2 4) (- 4 6)) 6)

; 6
(define a 3)

(check-equal? a 3)

; 7
(define b (+ a 1))

(check-equal? b 4)

; 8
(check-equal? (+ a b (* a b)) 19)

; 9
(check-equal? (= a b) #f)

; 10
(define solution
  (cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)))

(check-equal? solution 16)

; 11
(check-equal? (if (and (> b a) (< b (* a b)))
    b
    a) 4)

; 12
(check-equal? (+ 2 (if (> b a) b a)) 6)

; 13
(check-equal? (* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) 16)
   