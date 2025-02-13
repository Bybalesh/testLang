(function (Prism) {

	var comment = {
		pattern: /(^[ \t]*| {2}|\t)#.*/m,
		lookbehind: true,
		greedy: true
*** Settings ***
Documentation     Пример простого теста
Library           SeleniumLibrary

*** Variables ***
${URL}            https://example.com
${BROWSER}        Chrome

*** Test Cases ***
Открыть главную страницу
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Example Domain
    Close Browser
*** Settings ***
Documentation    Пример теста на Robot Framework
    Close Browser
Library          SeleniumLibrary

*** Variables ***
${URL}           https://example.com
${BROWSER}       Chrome

*** Test Cases ***
Открыть сайт и проверить заголовок
    [Documentation]    Проверка, что заголовок страницы содержит "Example Domain"
    Open Browser       ${URL}  ${BROWSER}
    Title Should Be    Example Domain
