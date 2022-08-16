extends CanvasLayer


onready var user_values = get_node("/root/UserValues")
onready var program_values = get_node("/root/ProgramValues")


func _ready():
	$version_label.text = str(program_values.current_version)
	$welcome_title.text = "Good morning, " + user_values.user_first_name + "!"


#func _process(_delta):
#	Currently the only working way to show the user name. NOT desirable, continuously running the same line of code for no reason than me not figuring it out.
#	$welcome_title.text = "Good morning, " + user_info.user_first_name + "!"


func _on_button_update_check_pressed():
	$HTTPRequest.request("https://raw.githubusercontent.com/hobbesjaap/wellbeingapp/main/version_info.csv")

func update_user_name_label():
	$welcome_title.text = "Good morning, " + user_values.user_first_name + "!"


func _on_HTTPRequest_request_completed(_result, _response_code, _headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	program_values.web_release_version = json.result
	if program_values.web_release_version > program_values.release_version:
			print("There's an update!")
	elif program_values.web_release_version == program_values.release_version:
			print("There is no update!")
