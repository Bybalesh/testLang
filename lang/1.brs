x=0;

onStart=

{Form(form1).activate()

};

show=

{Subwindow(subwin1).output

(plot.function(sin(x)/x)

for(x=-100..100,points=1000)

);

};

	},
	'property': {
		pattern: /([\r\n{,][\t ]*)(?:(?!\d)\w+|"(?:[^"\r\n]|"")*"(?!"))(?=[ \t]*:)/,
		lookbehind: true,
		greedy: true
	},
	'string': {
		pattern: /"(?:[^"\r\n]|"")*"(?!")/,
		greedy: true
	},
	'class-name': {
		pattern: /(\bAs[\t ]+)\w+/i,
		lookbehind: true
	},
	'keyword': /\b(?:As|Dim|Each|Else|Elseif|End|Exit|For|Function|Goto|If|In|Print|Return|Step|Stop|Sub|Then|To|While)\b/i,
	'boolean': /\b(?:false|true)\b/i,
	'function': /\b(?!\d)\w+(?=[\t ]*\()/,
	'number': /(?:\b\d+(?:\.\d+)?(?:[ed][+-]\d+)?|&h[a-f\d]+)\b[%&!#]?/i,
	'operator': /--|\+\+|>>=?|<<=?|<>|[-+*/\\<>]=?|[:^=?]|\b(?:and|mod|not|or)\b/i,
	'punctuation': /[.,;()[\]{}]/,
	'constant': /\b(?:LINE_NUM)\b/i
};

Prism.languages.brightscript['directive-statement'].inside.expression.inside = Prism.languages.brightscript;
