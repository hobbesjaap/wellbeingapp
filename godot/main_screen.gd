extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var main_screen = get_node("/root/main_screen")
onready var start_menu = get_node("/root/main_screen/start_menu")
onready var user_menu = get_node("/root/main_screen/user_details")

# Called when the node enters the scene tree for the first time.
func _ready():
	# Set starting state visibility
	
	main_screen.visible = true
	start_menu.visible = true
	user_menu.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
