extends Node2D

onready var main_screen = get_node("/root/main_screen")
onready var start_menu = get_node("/root/main_screen/start_menu")
onready var user_menu = get_node("/root/main_screen/user_details")
onready var user_name = get_node("%textbox_user_name")

onready var user_info = get_node("/root/UserValues")
onready var program_info = get_node("/root/ProgramValues")

var config = ConfigFile.new()
var err = config.load("user://user.ini")


func _ready():
	# Read config file if it exists
	# otherwise set up new user data

	if err != OK:
		start_menu.visible = false
		user_menu.visible = true
		
	else:

	# Set starting state visibility
	
		main_screen.visible = true
		start_menu.visible = true
		user_menu.visible = false
		
	# define variables from ini file
		user_info.user_first_name = config.get_value("User", "user_name")
		user_name.text = user_info.user_first_name

# Iterate over all sections.
#	for player in config.get_sections():
#		# Fetch the data for each section.
#		var player_name = config.get_value(player, "player_name")
#		var player_score = config.get_value(player, "best_score")

#func _process(delta):
#	pass
