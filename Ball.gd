extends Node2D

var pos_x: int
var pos_y: int



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	pos_x = 960
	pos_y = 480
	self.position = Vector2(pos_x, pos_y)
	

	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	pass
	pos_x += 100 * delta
	pos_y += 100 * delta
	self.position = Vector2(pos_x, pos_y)
	
	
