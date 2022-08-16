extends Node


onready var node_variables = get_node("/root/NodeVariables")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func show_start_menu():
	node_variables.main_screen.visible = true
	node_variables.start_menu.visible = true
	node_variables.user_menu.visible = false

func show_user_menu():
	node_variables.main_screen.visible = true
	node_variables.start_menu.visible = false
	node_variables.user_menu.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
