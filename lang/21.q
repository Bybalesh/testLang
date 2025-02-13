Prism.languages.qore = Prism.languages.extend('clike', {
	'comment': {
		pattern: /(^|[^\\])(?:\/\*[\s\S]*?\*\/|(?:\/\/|#).*)/,
		lookbehind: true
	},
	# Включить модуль для работы с датой и временем
load "datetime.qm";

class HelloWorld {
    public string greet(string name) {
        # Получить текущее время
        date now = time::now();
        
        return "Hello, " + name + "! The current time is: " + now.toString("%Y-%m-%d %H:%M:%S");
    }
};

# Создать экземпляр класса
HelloWorld hw;

# Вызвать метод greet()
string message = hw.greet("Qore");

# Вывести сообщение
println(message);
