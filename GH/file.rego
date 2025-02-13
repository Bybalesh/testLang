// https://www.openpolicyagent.org/docs/latest/policy-reference/

Prism.languages.rego = {
	'comment': /#.*/,
	'property': {
		pattern: /(^|[^\\.])(?:"(?:\\.|[^\\"\r\n])*"|`[^`]*`|\b[a-z_]\w*\b)(?=\s*:(?!=))/i,
		lookbehind: true,
		greedy: true
язык программирования .rego
 напиши правильное расширение и 
приведи пример кода
};
