extends Node

var user_first_name = " "
var user_birth_month = 0
var user_birth_day = 0

# For the login-streak thing

#var user_login_streak
#var user_last_login_year
#var user_last_login_month
#var user_last_login_day


var config = ConfigFile.new()
var err = config.load("user://user.ini")

func _ready():
	# Read config file if it exists
	# define variables from ini file
	if err == OK:
		user_first_name = config.get_value("User", "user_name")
		
	else:
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
