Prism.languages.renpy = {
	'comment': {
		pattern: /(^|[^\\])#.+/,
		lookbehind: true
	},

	'string': {
# Сценарий на Ren'Py

init python:
    # Определение персонажа
    class Character(NVLCharacter):
        def __init__(self, name, color="#000"):
            super(Character, self).__init__(name, color, what_style="say_nvl")

    narrator = Character(None, what_color="#c8c8ff")

label start:

    scene bg room

    show eileen happy

    narrator "Привет! Меня зовут Эйлин."

    eileen "Это моя комната. Что думаешь?"

    hide eileen

    return

