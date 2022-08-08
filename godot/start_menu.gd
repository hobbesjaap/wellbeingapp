extends Node2D


onready var user_info = get_node("/root/UserValues")
onready var program_info = get_node("/root/ProgramValues")

# Called when the node enters the scene tree for the first time.
func _ready():
	$welcome_title.text = "Good morning " + user_info.user_first_name + "!"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$welcome_title.text = "Good morning " + user_info.user_first_name + "!"
#	pass
