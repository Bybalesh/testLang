(function (Prism) {

	Prism.languages.insertBefore('javascript', 'function-variable', {
		'method-variable': {
			pattern: RegExp('(\\.\\s*)' + Prism.languages.javascript['function-variable'].pattern.source),
			lookbehind: true,
			alias: ['function-variable', 'method', 'function', 'property-access']
		}
// Импортируем функции из Lodash
import _ from 'lodash';

// Пример использования функции _.chunk для разделения массива на куски
let array = [1, 2, 3, 4, 5, 6, 7, 8];
let chunkedArray = _.chunk(array, 3);

console.log(chunkedArray);
// Вывод: [[1, 2, 3], [4, 5, 6], [7, 8]]

