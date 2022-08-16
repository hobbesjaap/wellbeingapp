extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_button_open_github_pressed():
	var _error = OS.shell_open("https://github.com/hobbesjaap/wellbeingapp")
