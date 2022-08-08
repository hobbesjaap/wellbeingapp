extends Node2D


onready var user_info = get_node("/root/UserValues")
onready var program_info = get_node("/root/ProgramValues")

func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")


func _process(_delta):
	$welcome_title.text = "Good morning " + user_info.user_first_name + "!"


func _on_button_update_check_pressed():
	$HTTPRequest.request("https://raw.githubusercontent.com/hobbesjaap/wellbeingapp/main/version_stuff.csv")


#func _on_HTTPRequest_request_completed(result, response_code, headers, body):
func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	program_info.web_release_version = json.result
