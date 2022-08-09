extends Node


onready var main_screen = get_node("/root/main_screen")
onready var start_menu = get_node("/root/main_screen/start_menu")
onready var user_menu = get_node("/root/main_screen/user_details")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func show_start_menu():
	main_screen.visible = true
	start_menu.visible = true
	user_menu.visible = false

func show_user_menu():
	main_screen.visible = true
	start_menu.visible = false
	user_menu.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
