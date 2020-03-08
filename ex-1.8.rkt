#lang racket

(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 3))

(define (square b)
  (* b b))
(define (cube b) (* b b b))

(define (cube-root x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.00001))

  (define (good-enough2? guess)
     (< (abs (- (cube guess) x)) 0.00001))

  (define (improve guess x) 
               (average (/ x (square guess)) (* 2 guess))) 

  (define (aux guess)
    (if (good-enough2? guess) guess
        (aux (improve guess x))))

  (aux 1.0))

(provide cube-root)