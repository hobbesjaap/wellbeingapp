extends CanvasLayer


@onready var user_values = get_node("/root/UserValues")
@onready var program_values = get_node("/root/ProgramValues")

var csv_url = "https://raw.githubusercontent.com/hobbesjaap/wellbeingapp/main/version_info.csv"

var welcome_day_part = " "

func _ready():
	$version_label.text = "Version " + str(program_values.current_version)

	user_values.get_device_time()
	user_values.set_welcome_day_part()
	
	$welcome_title.text = user_values.welcome_day_part + user_values.user_first_name + "!"


	


#func _process(_delta):
#	pass


func _on_button_update_check_pressed():
	$HTTPRequest.request(csv_url)


func update_user_name_label():
	$welcome_title.text = "Good morning, " + user_values.user_first_name + "!"


func _on_HTTPRequest_request_completed(_result, _response_code, _headers, body):
	var test_json_conv = JSON.new()
	test_json_conv.parse(body.get_string_from_utf8())
	var json = test_json_conv.get_data()
	program_values.web_release_version = json.result
	if program_values.web_release_version > program_values.release_version:
			print("There's an update!")
	elif program_values.web_release_version == program_values.release_version:
			print("There is no update!")
