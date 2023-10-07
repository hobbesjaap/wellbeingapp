extends Node

# User values

var user_first_name = " "
var user_birth_month = 0
var user_birth_day = 0

# System time values

var date
var date_month
var date_day

var date_time
var date_time_hour

var welcome_day_part = " "

# For the login-streak thing

#var user_login_streak
#var user_last_login_year
#var user_last_login_month
#var user_last_login_day


var config = ConfigFile.new()
var err = config.load("user://user.ini")

# This function can be triggered to update the known system time.
func get_device_time():
	date = Time.get_date_dict_from_system()
	date_time = Time.get_time_dict_from_system()
	date_time_hour = date_time.hour
	date_month = date.month
	date_day = date.day
	print(date_month)
	print(date_day)
	print(date_time_hour)

func set_welcome_day_part():
	if date_time_hour < 24:
		welcome_day_part = "Good evening, "
	if date_time_hour < 18:
		welcome_day_part = "Good afternoon, "
	if date_time_hour < 12:
		welcome_day_part = "Good morning, "
	if date_time_hour < 6:
		welcome_day_part = "Good night, "

func _ready():
	get_device_time()
	# Read config file if it exists
	# define variables from ini file
	if err == OK:
		user_first_name = config.get_value("User", "user_name")
		user_birth_month = config.get_value("User", "user_birth_month")
		user_birth_day = config.get_value("User", "user_birth_day")
		
	else:
		pass
