Prism.languages.oz = {
	'comment': {
		pattern: /\/\*[\s\S]*?\*\/|%.*/,
		greedy: true
```oz
declare
  {System.showInfo "Hello, World!"}
```
	],
	'number': /\b(?:0[bx][\da-f]+|\d+(?:\.\d*)?(?:e~?\d+)?)\b|&(?:[^\\]|\\(?:\d{3}|.))/i,
	'variable': /`(?:[^`\\]|\\.)+`/,
	'attr-name': /\b\w+(?=[ \t]*:(?![:=]))/,
	'operator': /:(?:=|::?)|<[-:=]?|=(?:=|<?:?)|>=?:?|\\=:?|!!?|[|#+\-*\/,~^@]|\b(?:andthen|div|mod|orelse)\b/,
	'punctuation': /[\[\](){}.:;?]/
};
