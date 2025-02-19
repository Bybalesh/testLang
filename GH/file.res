Prism.languages.rescript = {
	'comment': {
		pattern: /\/\/.*|\/\*[\s\S]*?(?:\*\/|$)/,
		greedy: true
// Пример программы на ReScript: вычисление факториала и вывод результата
let rec factorial = n =>
  if n == 0 {
    1
  } else {
    n * factorial(n - 1)
  }

let result = factorial(5)
Js.log("Factorial of 5 is: " ++ Belt.Int.toString(result))
