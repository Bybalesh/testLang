<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Привет, мир!</title>
</head>
<body>
    <h1>Добро пожаловать на мою страницу!</h1>
    <p>Сегодня ${currentDate}</p>
    <ul>
        <#list users as user>
            <li>${user.name}: ${user.email}</li>
        </#list>
    </ul>
</body>
</html>
