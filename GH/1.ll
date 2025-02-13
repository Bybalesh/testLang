(function (Prism) {
	Prism.languages.llvm = {
		'comment': /;.*/,
; Функция sum принимает два целочисленных аргумента и возвращает их сумму
define i32 @sum(i32 %a, i32 %b) {
entry:
  %result = add i32 %a, %b
  ret i32 %result
}
