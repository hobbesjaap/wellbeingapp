extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var user_first_name = "No name"


# Called when the node enters the scene tree for the first time.
func _ready():
	$welcome_title.text = "Good morning " + user_first_name + "!"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
