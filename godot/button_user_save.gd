extends Button


onready var node_variables = get_node("/root/NodeVariables")
onready var ui_control = get_node("/root/UiControl")
onready var user_values = get_node("/root/UserValues")
onready var user_name = get_node("%textbox_user_name")


func _on_button_user_save_pressed():

	if user_name.text == "":
		# Prettify this later with a friendly user prompt
		print("Won't continue. Put in name.")

	else:
		# First time label turns off - this is done every time - no harm in that?
		node_variables.first_time_label.visible = false
		
		# Stores values in ini file
		user_values.config.set_value("User", "user_name", user_name.text)
		user_values.user_first_name = user_name.text
		#config.set_value("Player1", "best_score", 10)
		#onfig.set_value("Player2", "player_name", "V3geta")
		#config.set_value("Player2", "best_score", 9001)

		# Save it to a file (overwrite if already exists).
		# Need to make sure I never lose any values I add.
		# This seems to be a manual thing to program.
		# So per value, make sure to read it upon load.
		# And write it out again as well.

		user_values.config.save("user://user.ini")
		
		node_variables.welcome_label.text = "Good morning, " + user_values.user_first_name + "!"
		ui_control.show_start_menu()
