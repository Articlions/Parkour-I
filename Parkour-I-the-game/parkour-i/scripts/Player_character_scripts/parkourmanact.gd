class_name Parkourman extends CharacterBody2D

var speed: float = 550.0
var jump_velocity: float = -700.0
var acceleration: float = 1600.0
var jump_count = 0     

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta 
	else: 
		jump_count = 0
	
	if Input.is_action_just_pressed("jump") and jump_count < 3:
		jump_count += 1
		velocity.y = jump_velocity
		print(velocity.y)
		print(jump_count)
	var direction: float = Input.get_action_strength("right") - Input.get_action_strength("left") 
	if direction:
		velocity.x = move_toward(velocity.x, direction * speed, acceleration * delta)
	else: 
		velocity.x = move_toward(velocity.x, 0 ,acceleration * delta)
	move_and_slide()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
