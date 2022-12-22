extends KinematicBody

var velocity = Vector3(0,0,0)


func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 5
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -5
	elif Input.is_action_pressed("ui_up"):
		velocity.z = -5
	elif Input.is_action_pressed("ui_down"):
		velocity.z = 5
	else:
		velocity.x = 0
		velocity.z = 0
	move_and_slide(velocity)
