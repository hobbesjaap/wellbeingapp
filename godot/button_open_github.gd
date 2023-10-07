extends Button


func _on_button_open_github_pressed():
	var _error = OS.shell_open("https://gitea.defiantjc.synology.me/jaap/wellbeingapp")
