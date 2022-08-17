extends Node


onready var main_screen = get_node("/root/main_screen")
onready var start_menu = get_node("/root/main_screen/UI/top_container/start_menu")
onready var user_menu = get_node("/root/main_screen/UI/top_container/user_details")
onready var daily_prompts = get_node("/root/main_screen/UI/top_container/daily_prompts")


onready var user_name = get_node("/root/main_screen/UI/top_container/user_details/user_menu/green_panel/textbox_user_name")
onready var first_time_label = get_node("/root/main_screen/UI/top_container/user_details/user_menu/green_panel/label_first_time")
onready var welcome_label = get_node("/root/main_screen/UI/top_container/start_menu/welcome_title")


func _ready():
	pass
