Prism.languages.io = {
	'comment': {
		pattern: /(^|[^\\])(?:\/\*[\s\S]*?(?:\*\/|$)|\/\/.*|#.*)/,
		lookbehind: true,
# Определение объекта 'Person'
Person := Object clone do(
    name ::= ""
    
    initWithName := method(name, self name = name)
    
    describe := method("My name is " .. name)
)

# Создание экземпляра объекта 'Person' и вывод описания
john := Person clone initWithName("John")
writeln(john describe)
