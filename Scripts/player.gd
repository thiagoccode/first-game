extends CharacterBody2D

var grav = 10
var speed = 100


func _physics_process(_delta):
	if !is_on_floor():
		velocity.y += grav
	
	if Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D):
		velocity.x = speed
		$Sprite2D.flip_h = false
	elif Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A):
		velocity.x = -speed
		$Sprite2D.flip_h = true
	else:
		velocity.x = 0
		
	if is_on_floor() and (Input.is_action_just_pressed("ui_up") or Input.is_key_pressed(KEY_SPACE)):
		velocity.y -= 300
		

	move_and_slide()
