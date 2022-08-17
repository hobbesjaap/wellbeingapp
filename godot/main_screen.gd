extends CanvasLayer


onready var node_variables = get_node("/root/NodeVariables")
onready var ui_control = get_node("/root/UiControl")
onready var user_values = get_node("/root/UserValues")


func _ready():
	# Read config file if it exists
	# otherwise set up new user data

	if user_values.err != OK:
		ui_control.show_user_menu()
		node_variables.first_time_label.visible = true
		
	else:

	# Set starting state visibility
		ui_control.show_start_menu()
		node_variables.first_time_label.visible = false
		
	# define variables from ini file
		node_variables.user_name.text = user_values.user_first_name

# Iterate over all sections.
#	for player in config.get_sections():
#		# Fetch the data for each section.
#		var player_name = config.get_value(player, "player_name")
#		var player_score = config.get_value(player, "best_score")

#func _process(delta):
#	pass
