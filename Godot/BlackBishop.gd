extends Sprite

var grabbed = false
var mouse_offset = Vector2()
var prev_pos = Vector2()

func _process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and grabbed:
		position = get_global_mouse_position() + mouse_offset
	if Input.is_physical_key_pressed(KEY_ENTER):
		position = prev_pos

func _on_Image_gui_input(event):
	if event is InputEventMouseButton:
		if not grabbed:
			prev_pos = position
		grabbed = event.pressed
		mouse_offset = position - get_global_mouse_position()


func _on_Area2D_area_entered(area):
	print(area.name)
