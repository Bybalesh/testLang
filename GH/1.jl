Prism.languages.julia = {
	'comment': {
		// support one level of nested comments
		// https://github.com/JuliaLang/julia/pull/6128
		pattern: /(^|[^\\])(?:#=(?:[^#=]|=(?!#)|#(?!=)|#=(?:[^#=]|=(?!#)|#(?!=))*=#)*=#|#.*)/,
		lookbehind: true
# Функция для вычисления факториала
function factorial(n::Int)
    if n < 0
        error("Факториал отрицательного числа не определен.")
    elseif n == 0 || n == 1
        return 1
    else
        return n * factorial(n - 1)
    end
end

# Использование функции
println("Факториал числа 5 равен ", factorial(5))
