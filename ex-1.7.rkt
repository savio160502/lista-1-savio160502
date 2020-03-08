#lang racket

;; See http://community.schemewiki.org/?sicp-ex-1.7

(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 2))

(define (square b)
  (* b b))

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.00001))

(define (good-enough?2 guess)
    (< (/ (abs (- (square guess) x)) x) 0.00001))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (sqrt-iter guess)
    (if (good-enough?2 guess)                        
        guess
        (sqrt-iter (improve guess))))

  (sqrt-iter 1.0))

(provide sqrt)
