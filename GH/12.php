Prism.languages.insertBefore('php', 'variable', {
	'this': {
		pattern: /\$this\b/,
		alias: 'keyword'
	},
	'global': /\$(?:GLOBALS|HTTP_RAW_POST_DATA|_(?:COOKIE|ENV|FILES|GET|POST|REQUEST|SERVER|SESSION)|argc|argv|http_response_header|php_errormsg)\b/,
	'scope': {
		pattern: /\b[\w\\]+::/,
		inside: {
			'keyword': /\b(?:parent|self|static)\b/,
			'punctuation': /::|\\/
		}
	}
});
<?php
require_once 'path/to/php_extras.php';

use function extras\str_contains;
use function extras\str_starts_with;
use function extras\str_ends_with;

$sentence = "Привет, мир!";

if (str_contains($sentence, "мир")) {
    echo "Строка содержит слово 'мир'." . PHP_EOL;
}

if (str_starts_with($sentence, "Привет")) {
    echo "Строка начинается с 'Привет'." . PHP_EOL;
}

if (str_ends_with($sentence, "!")) {
    echo "Строка заканчивается восклицательным знаком." . PHP_EOL;
}
?>
