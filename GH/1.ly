\version "2.22.1"

melody = \relative c' {
  c4 d e f |
  g a b c |
  c1 |
}

\score {
  \new Staff \melody
  \layout {}
  \midi {}
}

	var lilypond = Prism.languages.lilypond = {
		'comment': /%(?:(?!\{).*|\{[\s\S]*?%\})/,
		'embedded-scheme': {
			pattern: RegExp(/(^|[=\s])#(?:"(?:[^"\\]|\\.)*"|[^\s()"]*(?:[^\s()]|<expr>))/.source.replace(/<expr>/g, function () { return schemeExpression; }), 'm'),
			lookbehind: true,
			greedy: true,
			inside: {
				'scheme': {
					pattern: /^(#)[\s\S]+$/,
					lookbehind: true,
					alias: 'language-scheme',
					inside: {
						'embedded-lilypond': {
							pattern: /#\{[\s\S]*?#\}/,
							greedy: true,
							inside: {
								'punctuation': /^#\{|#\}$/,
								'lilypond': {
									pattern: /[\s\S]+/,
									alias: 'language-lilypond',
									inside: null // see below
								}
							}
						},
						rest: Prism.languages.scheme
					}
				},
				'punctuation': /#/
			}
		},
		'string': {
			pattern: /"(?:[^"\\]|\\.)*"/,
			greedy: true
		},
		'class-name': {
			pattern: /(\\new\s+)[\w-]+/,
			lookbehind: true
		},
		'keyword': {
			pattern: /\\[a-z][-\w]*/i,
			inside: {
				'punctuation': /^\\/
			}
		},
		'operator': /[=|]|<<|>>/,
		'punctuation': {
			pattern: /(^|[a-z\d])(?:'+|,+|[_^]?-[_^]?(?:[-+^!>._]|(?=\d))|[_^]\.?|[.!])|[{}()[\]<>^~]|\\[()[\]<>\\!]|--|__/,
			lookbehind: true
		},
		'number': /\b\d+(?:\/\d+)?\b/
	};

	lilypond['embedded-scheme'].inside['scheme'].inside['embedded-lilypond'].inside['lilypond'].inside = lilypond;

	Prism.languages.ly = lilypond;

}(Prism));
