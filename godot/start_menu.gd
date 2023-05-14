extends CanvasLayer

var csv_url : String = "https://raw.githubusercontent.com/hobbesjaap/wellbeingapp/main/version_info.csv"
var welcome_day_part : String = " "


func _ready():
	$version_label.text = "Version " + str(ProgramValues.current_version)

	UserValues.get_device_time()
	UserValues.set_welcome_day_part()
	
	$welcome_title.text = UserValues.welcome_day_part + UserValues.user_first_name + "!"


func _on_button_update_check_pressed():
	$HTTPRequest.request(csv_url)


func update_user_name_label():
	$welcome_title.text = "Good morning, " + UserValues.user_first_name + "!"


func _on_HTTPRequest_request_completed(_result, _response_code, _headers, body):
	var test_json_conv = JSON.new()
	test_json_conv.parse(body.get_string_from_utf8())
	var json = test_json_conv.get_data()
	ProgramValues.web_release_version = json.result
	if ProgramValues.web_release_version > ProgramValues.release_version:
			print("There's an update!")
	elif ProgramValues.web_release_version == ProgramValues.release_version:
			print("There is no update!")
