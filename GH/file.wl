Prism.languages.wolfram = {
	'comment': // Allow one level of nesting - note: regex taken from applescipt
		/\(\*(?:\(\*(?:[^*]|\*(?!\)))*\*\)|(?!\(\*)[\s\S])*?\*\)/,
	'string': {
Sum[Range[10]]
