extends CharacterBody2D

class_name player

@onready var player_sprite: Sprite2D = get_node("texture")
@export var speed:int

var flipped:bool = false
var velocidade: Vector2
var direction: int = 1

func _physics_process(delta: float):
	horizontal_movement_env()
	move_and_slide()

func horizontal_movement_env()->void:
	var input_direction:float=Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocidade.x = input_direction * speed
	print(velocidade.x)
