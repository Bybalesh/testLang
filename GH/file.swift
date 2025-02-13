Prism.languages.swift = {
	'comment': {
		// Nested comments are supported up to 2 levels
	// Определяем функцию greetUser
func greetUser() {
    // Выводим на экран сообщение «Как тебя зовут?»
    print("Как тебя зовут?")
    
    // Считываем из консоли имя пользователя
    if let name = readLine() {
        // Выводим приветствие
        print("Привет, \(name).")
    }
}

// Вызываем функцию greetUser
greetUser()
// Константы
let speedOfLight = 299_792_458
let numberOfApples = 345
let numberOfOranges = 5
let appleSummary = "I have \(numberOfApples) apples."
let fruitSummary = "I have \(numberOfApples + numberOfOranges) pieces of fruit."
