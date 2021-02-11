extends Control


# Declare member variables here. Examples:
export var gpFileLocation : String
onready var gpNode : PackedScene = load(gpFileLocation)

# Called when the node enters the scene tree for the first time.
func _ready():
	
	get_node("Title").play("default")
	get_node("AnimationPlayer").play("default")
	get_node("TextureButton/storyAnimation").set_visible(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_mouse_entered():
	get_node("TextureButton/storyAnimation").set_visible(true)


func _on_TextureButton_mouse_exited():
	get_node("TextureButton/storyAnimation").set_visible(false)
	


func _on_TextureButton_pressed():
	get_tree().change_scene_to(gpNode)
