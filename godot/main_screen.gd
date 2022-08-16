extends CanvasLayer


onready var node_variables = get_node("/root/NodeVariables")
onready var ui_control = get_node("/root/UiControl")
onready var user_info = get_node("/root/UserValues")

var config = ConfigFile.new()
var err = config.load("user://user.ini")


func _ready():
	# Read config file if it exists
	# otherwise set up new user data

	if err != OK:
		ui_control.show_user_menu()
		
	else:

	# Set starting state visibility
		ui_control.show_start_menu()
		
	# define variables from ini file
		user_info.user_first_name = config.get_value("User", "user_name")
		node_variables.user_name.text = user_info.user_first_name

# Iterate over all sections.
#	for player in config.get_sections():
#		# Fetch the data for each section.
#		var player_name = config.get_value(player, "player_name")
#		var player_score = config.get_value(player, "best_score")

#func _process(delta):
#	pass
