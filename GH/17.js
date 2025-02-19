Prism.languages.jsonp = Prism.languages.extend('json', {
	'punctuation': /[{}[\]();,.]/
});

Prism.languages.insertBefore('jsonp', 'punctuation', {
	'function': /(?!\s)[_$a-zA-Z\xA0-\uFFFF](?:(?!\s)[$\w\xA0-\uFFFF])*(?=\s*\()/
});
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JSONP Example</title>
</head>
<body>
    <script>
        function jsonpCallback(data) {
            console.log(data);
        }
    </script>
    <script src="https://example.com/data?callback=jsonpCallback"></script>
</body>
</html>
jsonpCallback({
    "name": "Иван Иванов",
    "age": 30,
    "address": {
        "city": "Москва",
        "street": "Ленинский проспект",
        "houseNumber": 15
    },
    "skills": ["Программирование", "Анализ данных", "Управление проектами"]
});
