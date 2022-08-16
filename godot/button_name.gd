extends Button

# I'll use this script to call up the user details menu.
# This includes their name, but also topics of interest, etc.

# referencing nodes for menu switching

onready var node_variables = get_node("/root/NodeVariables")
onready var ui_control = get_node("/root/UiControl")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# makes the start menu disappear and the user menu appear

func _on_button_name_pressed():
	ui_control.show_user_menu()
	
