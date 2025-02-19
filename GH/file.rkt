Prism.languages.racket = Prism.languages.extend('scheme', {
	'lambda-parameter': {
		// the racket lambda syntax is a lot more complex, so we won't even attempt to capture it.
		// this will just prevent false positives of the `function` pattern
		pattern: /([(\[]lambda\s+[(\[])[^()\[\]'\s]+/,
		lookbehind: true
	}
#lang racket

;; Функция для сложения двух чисел
(define (add x y)
  (+ x y))

;; Основная программа
(define main
  (let ([a 5]
        [b 7])
    (displayln (format "Сумма ~a и ~a равна ~a." a b (add a b)))))

(main)
