extends Area2D


# Declare member variables here. Examples:
export var sq : int


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if (Input.is_action_pressed("click") and mouseIn()):
		print("success")

func mouseIn():
	pass
