extends Button

# I'll use this script to call up the user details menu.
# This includes their name, but also topics of interest, etc.

# referencing nodes for menu switching

onready var start_menu = get_node("/root/main_screen/start_menu")
onready var user_details = get_node("/root/main_screen/user_details")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# makes the start menu disappear and the user menu appear

func _on_button_name_pressed():
	start_menu.visible = false
	user_details.visible = true
	
