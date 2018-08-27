extends KinematicBody2D

export (int) var speed = 90
var screensize
var velocity = Vector2()

func _ready():
	screensize = get_viewport_rect().size

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	if Input.is_action_pressed("ui_sprint"):
		if speed < 200:
			speed += 2
	else:
		speed = 90

func _physics_process(delta):
	get_input()
	move_and_slide(velocity)