public class HelloWorldController {

    public String message { get; set; }

    public HelloWorldController() {
        message = 'Hello, World from Apex!';
    }

    public String getGreeting() {
        return message;
    }

    public void setMessage(String newMessage) {
        message = newMessage;
    }
}
trigger AccountTrigger on Account (before insert, before update) {

    for (Account acc : Trigger.new) {
        if (String.isBlank(acc.Name)) {
            acc.addError('Account Name cannot be blank.');
        }
    }
}

	Prism.languages.apex = {
		'comment': Prism.languages.clike.comment,
		'string': Prism.languages.clike.string,
		'sql': {
			pattern: /((?:[=,({:]|\breturn)\s*)\[[^\[\]]*\]/i,
			lookbehind: true,
			greedy: true,
			alias: 'language-sql',
			inside: Prism.languages.sql
		},

		'annotation': {
			pattern: /@\w+\b/,
			alias: 'punctuation'
		},
		'class-name': [
			{
				pattern: insertClassName(/(\b(?:class|enum|extends|implements|instanceof|interface|new|trigger\s+\w+\s+on)\s+)<CLASS-NAME>/.source),
				lookbehind: true,
				inside: classNameInside
			},
			{
				// cast
				pattern: insertClassName(/(\(\s*)<CLASS-NAME>(?=\s*\)\s*[\w(])/.source),
				lookbehind: true,
				inside: classNameInside
			},
			{
				// variable/parameter declaration and return types
				pattern: insertClassName(/<CLASS-NAME>(?=\s*\w+\s*[;=,(){:])/.source),
				inside: classNameInside
			}
		],
		'trigger': {
			pattern: /(\btrigger\s+)\w+\b/i,
			lookbehind: true,
			alias: 'class-name'
		},
		'keyword': keywords,
		'function': /\b[a-z_]\w*(?=\s*\()/i,

		'boolean': /\b(?:false|true)\b/i,

		'number': /(?:\B\.\d+|\b\d+(?:\.\d+|L)?)\b/i,
		'operator': /[!=](?:==?)?|\?\.?|&&|\|\||--|\+\+|[-+*/^&|]=?|:|<<?=?|>{1,3}=?/,
		'punctuation': /[()\[\]{};,.]/
	};

}(Prism));
