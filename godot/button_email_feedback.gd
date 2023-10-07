extends Button


func _ready():
	pass # Replace with function body.


func _on_button_email_feedback_pressed():
	var _error = OS.shell_open("mailto:feedback@jaapmarsman.com")
