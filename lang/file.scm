(function (Prism) {
	Prism.languages.scheme = {
		// this supports "normal" single-line comments:
		//   ; comment
		// and (potentially nested) multiline comments:
) + ')';
			});
		}
		// return the last item
		return grammar[key];
	}

}(Prism));;; Пример программы на Scheme: вычисление факториала
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

;; Вызов функции и вывод результата
(display (factorial 5))  ;; Выведет 120
