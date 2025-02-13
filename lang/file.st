Prism.languages.smalltalk = {
	'comment': {
		pattern: /"(?:""|[^"])*"/,
```smalltalk
Object subclass: Point
instanceVariableNames: 'x y'.

Object methodsFor: 'initialize'!
initialize
    x := 0.
    y := 0.

Object methodsFor: 'setX:' withArguments: #(newX)
setX: newX
    x := newX.

Object methodsFor: 'setY:' withArguments: #(newY)
setY: newY
    y := newY.

Object methodsFor: 'moveBy:'
moveBy: anOffset
    x := x + anOffset x.
    y := y + anOffset y.

	'boolean': /\b(?:false|true)\b/,
	'number': [
		/\d+r-?[\dA-Z]+(?:\.[\dA-Z]+)?(?:e-?\d+)?/,
		/\b\d+(?:\.\d+)?(?:e-?\d+)?/
	],
	'operator': /[<=]=?|:=|~[~=]|\/\/?|\\\\|>[>=]?|[!^+\-*&|,@]/,
	'punctuation': /[.;:?\[\](){}]/
};
