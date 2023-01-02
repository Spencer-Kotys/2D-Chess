extends Sprite

var grabbed = false
var mouse_offset = Vector2()

func _on_KinematicBody2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		print("mouse click")
		grabbed = event.pressed
		mouse_offset = position - get_global_mouse_position()

func _process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and grabbed:
		position = get_global_mouse_position() + mouse_offset
