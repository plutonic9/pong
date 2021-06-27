extends Node2D

var pos_x: int
var pos_y: int

export var speed : int


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	pos_x = 100
	pos_y = 100
	speed = 800
	position = Vector2(pos_x, pos_y)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	var velocity = Vector2()
	
	velocity.x += 1
	velocity.y += 1
	
	velocity = velocity.normalized() * speed
	
	position += velocity * delta
