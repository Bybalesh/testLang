(function (Prism) {

	var multilineComment = /\/\*(?:[^*/]|\*(?!\/)|\/(?!\*)|<self>)*\*\//.source;
	for (var i = 0; i < 2; i++) {
		// support 4 levels of nested comments
		multilineComment = multilineComment.replace(/<self>/g, function () { return multilineComment; });
	}
	multilineComment = multilineComment.replace(/<self>/g, function () { return /[^\s\S]/.source; });


	Prism.languages.rust = {
		'comment': [
			{// Пример программы на Rust: вывод "Hello, World!" и вычисление факториала
fn main() {
    // Вывод текста на экран
    println!("Hello, World!");

    // Вычисление факториала
    let n = 5;
    let result = factorial(n);
    println!("Factorial of {} is {}", n, result);
}

// Функция для вычисления факториала
fn factorial(n: u32) -> u32 {
    if n == 0 {
        1
    } else {
        n * factorial(n - 1)
    }
}
