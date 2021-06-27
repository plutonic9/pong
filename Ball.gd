extends Node2D


export var speed : int = 200


var velocity: Vector2 = Vector2(1,1)

# Called when the node enters the scene tree for the first time.
func _ready():
	# var position = Vector2(960, 480)
	pass
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):	
	if position.x > OS.window_size.x or position.x < 0:
		velocity.x *= -1
	if position.y > OS.window_size.y or position.y < 0:
		velocity.y *= -1

	velocity = velocity.normalized() * speed
	position += velocity * delta

