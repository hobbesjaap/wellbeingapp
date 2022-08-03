extends Button

var config = ConfigFile.new()

onready var user_name = get_node("user_details/textbox_user_name")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_button_user_save_pressed():

# Store some values.
	config.set_value("User", "player_name", "Steve")
	config.set_value("Player1", "best_score", 10)
	config.set_value("Player2", "player_name", "V3geta")
	config.set_value("Player2", "best_score", 9001)

# Save it to a file (overwrite if already exists).
	config.save("user://user.ini")
