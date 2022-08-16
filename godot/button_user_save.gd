extends Button

var config = ConfigFile.new()

onready var node_variables = get_node("/root/NodeVariables")
onready var user_info = get_node("/root/UserValues")
onready var user_name = get_node("%textbox_user_name")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_button_user_save_pressed():

# Store some values.
# Maybe this one only runs if there is no ini
	config.set_value("User", "user_name", user_name.text)
	user_info.user_first_name = user_name.text
	#config.set_value("Player1", "best_score", 10)
	#onfig.set_value("Player2", "player_name", "V3geta")
	#config.set_value("Player2", "best_score", 9001)

# Save it to a file (overwrite if already exists).
# Need to make sure I never lose any values I add.
# This seems to be a manual thing to program.
# So per value, make sure to read it upon load.
# And write it out again as well.

	config.save("user://user.ini")
	
	node_variables.main_screen.visible = true
	node_variables.start_menu.visible = true
	node_variables.user_menu.visible = false

# Need to do a "This thing can't be empty" code
# Most likely here. A if .text = null, then,
# don't proceed.
