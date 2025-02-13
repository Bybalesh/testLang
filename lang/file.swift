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
