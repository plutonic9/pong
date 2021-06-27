extends Node2D


export var speed : int = 200



var velocity: Vector2 = Vector2(1,1)
var screen_width : int = 1920
var screen_height : int = 960

# Called when the node enters the scene tree for the first time.
func _ready():
	# var position = Vector2(960, 480)
	pass
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):	
	# var velocity = Vector2()
	
	# velocity.x = 1
	# velocity.y = 1
	speed += 1
	if speed > 25000:
		speed = 25000
	
	
	if position.x > screen_width or position.x < 0:
		velocity.x *= -1
	if position.y > screen_height or position.y < 0:
		velocity.y *= -1

	velocity = velocity.normalized() * speed
	position += velocity * delta

