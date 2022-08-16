extends Node


onready var main_screen = get_node("/root/main_screen")
onready var start_menu = get_node("/root/main_screen/UI/top_container/menus_container/start_menu")
onready var user_menu = get_node("/root/main_screen/UI/top_container/menus_container/user_details")
onready var user_name = get_node("/root/main_screen/UI/top_container/menus_container/user_details/textbox_user_name")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
