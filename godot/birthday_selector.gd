extends GridContainer


@onready var user_values = get_node("/root/UserValues")


func _ready():
	# Access the "country_menu" PopupMenu through this.
	var birth_month_popup_menu: PopupMenu = $button_birth_month.get_popup()
	var birth_day_popup_menu: PopupMenu = $button_birth_day.get_popup()
	# Signal for when the user selects an PopupMenu item.
	var _error = birth_month_popup_menu.connect("id_pressed",Callable(self,"_on_month_selected"))
	var _error2 = birth_day_popup_menu.connect("id_pressed",Callable(self,"_on_day_selected"))
	
	if user_values.user_birth_month != 0:
		$button_birth_month.text = str("Month " + str(user_values.user_birth_month))
	
	if user_values.user_birth_day != 0:
		$button_birth_day.text = str("Day " + str(user_values.user_birth_day))


func _on_month_selected( id ):
	print(id)
	user_values.user_birth_month = id
	$button_birth_month.text = str("Month " + str(id))


func _on_day_selected( id ):
	print(id)
	user_values.user_birth_day = id
	$button_birth_day.text = str("Day " + str(id))
