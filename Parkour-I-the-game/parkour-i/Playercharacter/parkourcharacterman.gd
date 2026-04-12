extends CharacterBody2D

@export var speed : int = 5600

func _ready():
	pass # Here we have our speed i dont know completely if delta time is slowing it down.
	


	

func _physics_process(delta):
	# Declaring our Inputs from our Input map.
	var player_direction = Input.get_vector("left","right","up","down")  
	
	# Move it person!
	velocity = player_direction * speed * delta
	# This was for debuggging purposes i didnt know  if it was moving.
	print(position) # Probably will be removed later.
	move_and_slide() # NEED this you need this to Gooooo GOOOOOOO!
