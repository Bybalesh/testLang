// https://ocaml.org/manual/lex.html

Prism.languages.ocaml = {
	'comment': {
		pattern: /\(\*[\s\S]*?\*\)/,
		greedy: true
(* Функция для вычисления факториала *)
let rec factorial n =
  if n <= 1 then 1
  else n * factorial (n - 1)

(* Вызов функции и вывод результата *)
let () =
  let result = factorial 5 in
  Printf.printf "Factorial of 5 is %d\n" result
