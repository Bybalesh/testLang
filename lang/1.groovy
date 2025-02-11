def greeting(name) {
    println("Привет, $name!")
}

greeting('Мир')

(function (Prism) {

	var interpolation = {
		pattern: /((?:^|[^\\$])(?:\\{2})*)\$(?:\w+|\{[^{}]*\})/,
		lookbehind: true,
		inside: {
			'interpolation-punctuation': {
				pattern: /^\$\{?|\}$/,
				alias: 'punctuation'
			},
			'expression': {
				pattern: /[\s\S]+/,
				inside: null // see below
			}
		}
	};
