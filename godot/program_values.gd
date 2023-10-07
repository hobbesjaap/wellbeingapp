extends Node


# This variable lists the release number.
# This is "the number of releases".

var release_version : int = 1

# The var web_release_version is pulled from GitHub
# when the update button is checked. A higher value means
# an update is available

var web_release_version : int = 0
var current_version : String = "0.0.8"


func _ready():
	pass
