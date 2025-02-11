Prism.languages.gdscript = {
	'comment': /#.*/,
	'string': {
		pattern: /@?(?:("|')(?:(?!\1)[^\n\\]|\\[\s\S])*\1(?!"|')|"""(?:[^\\]|\\[\s\S])*?""")/,
		greedy: true
	},
extends Node

var health = 100
var speed = 5

func _ready():
    print("Player is ready!")

func take_damage(amount):
    health -= amount
    if health <= 0:
        die()

func die():
    print("Player died.")
    queue_free()  # Удаляем объект из сцены

func move(delta):
    var direction = Vector2.ZERO
    if Input.is_action_pressed("ui_right"):
        direction.x += 1
    if Input.is_action_pressed("ui_left"):
        direction.x -= 1
    if Input.is_action_pressed("ui_up"):
        direction.y -= 1
    if Input.is_action_pressed("ui_down"):
        direction.y += 1
    
    if direction.length() > 0:
        direction = direction.normalized()
        global_position += direction * speed * delta
