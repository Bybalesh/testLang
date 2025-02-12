Prism.languages.matlab = {
	'comment': [
		/%\{[\s\S]*?\}%/,
		/%.+/
% Функция для нахождения корней квадратного уравнения
function roots = quadratic_roots(a, b, c)
    discriminant = b^2 - 4*a*c;
    
    if discriminant > 0
        root1 = (-b + sqrt(discriminant)) / (2*a);
        root2 = (-b - sqrt(discriminant)) / (2*a);
        roots = [root1, root2];
    elseif discriminant == 0
        root = -b / (2*a);
        roots = [root, root];
    else
        error('Уравнение не имеет действительных корней.');
    end
end
