extends Node


@onready var node_variables = get_node("/root/NodeVariables")
@onready var user_values = get_node("/root/UserValues")


func _ready():
	pass


func show_start_menu():
	node_variables.main_screen.visible = true
	node_variables.start_menu.visible = true
	node_variables.user_menu.visible = false
	node_variables.daily_prompts.visible = false


func show_user_menu():
	node_variables.main_screen.visible = true
	node_variables.start_menu.visible = false
	node_variables.user_menu.visible = true
	node_variables.daily_prompts.visible = false


func show_daily_prompts():
	node_variables.main_screen.visible = true
	node_variables.start_menu.visible = false
	node_variables.user_menu.visible = false
	node_variables.daily_prompts.visible = true
