Prism.languages.haxe = Prism.languages.extend('clike', {
	'string': {
		// Strings can be multi-line
		pattern: /"(?:[^"\\]|\\[\s\S])*"/,
		greedy: true
	},
	'class-name': [
		{
			pattern: /(\b(?:abstract|class|enum|extends|implements|interface|new|typedef)\s+)[A-Z_]\w*/,
			lookbehind: true,
		},
		// based on naming convention
		/\b[A-Z]\w*/
class Main {
    static function main() {
        trace("Привет, мир!");
    }
}
