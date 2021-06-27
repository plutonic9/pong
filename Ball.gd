extends Node2D

var pos_x: int
var pos_y: int

export var speed : int

# Called when the node enters the scene tree for the first time.
func _ready():
	pos_x = 0
	pos_y = 0
	speed = 200
	position = Vector2(pos_x, pos_y)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):	
	var velocity = Vector2()
	
	velocity.x += 1
	velocity.y += 1
	
	velocity = velocity.normalized() * speed
	
	position += velocity * delta

