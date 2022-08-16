extends Button


onready var ui_control = get_node("/root/UiControl")


func _on_button_name_pressed():
	ui_control.show_user_menu()
