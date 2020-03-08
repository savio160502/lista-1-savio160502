#lang racket

;; See http://community.schemewiki.org/?sicp-ex-1.7
                                                               ; Para os números que são menores que o "good-enough?", o DrRacket irá fazer a "average" e definirá ela como boa,pois
; a lógica impede a melhoria desse palpite depois do limite estabelecido e não resultará na resposta correta, pois o limite
; é maior do que o númer que queremos encontrar a raiz.
; Para os números grandes irá dá erro, porque (melhorar a adivinhação x) não irá melhorar o resultado depois de vários aprimoramentos
; devido à limitação de bits,a estimativa aprimorada será simplesmente igual ao palpite antigo em algum momento, assim os resultados em nunca mudam
; e, portanto, nunca atingem a faixa de tolerância, causando um loop infinito.

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

  (define (sqrt-iter guess)00000000000
    (if (good-enough?2 guess)                        
        guess
        (sqrt-iter (improve guess))))

  (sqrt-iter 1.0))

(provide sqrt)
