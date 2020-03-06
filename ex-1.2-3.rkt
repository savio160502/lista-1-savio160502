#lang racket

;; exercicio 1.2
;; Ver em https://web.mit.edu/alexmv/6.037/sicp.pdf 

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; exercicio 1.3

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-max3 a b c)
 (cond (( and (< a b) (< a c)) (+ (* b b) (* c c)))
                          (( and (< b a) (< b c)) (+ (* a a) (* c c)))
                          (( and (< c a) (< c b)) (+ (* b b) (* a a)))))
 

(provide sum-of-squares-max3)

