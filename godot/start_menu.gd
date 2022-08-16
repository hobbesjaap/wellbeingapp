extends CanvasLayer


onready var user_info = get_node("/root/UserValues")
onready var program_info = get_node("/root/ProgramValues")


func _ready():
#	$HTTPRequest.connect("request_completed", self, "_on_request_completed")
	$version_label.text = str(program_info.current_version)


func _process(_delta):
	$welcome_title.text = "Good morning " + user_info.user_first_name + "!"


func _on_button_update_check_pressed():
	$HTTPRequest.request("https://raw.githubusercontent.com/hobbesjaap/wellbeingapp/main/version_info.csv")


func _on_HTTPRequest_request_completed(_result, _response_code, _headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	program_info.web_release_version = json.result
	if program_info.web_release_version > program_info.release_version:
			print("There's an update!")
	elif program_info.web_release_version == program_info.release_version:
			print("There is no update!")
