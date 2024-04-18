extends TextureRect

var image_id : int = 0

func _get_drag_data(at_position):
	var preview_texture = TextureRect.new()
	
	preview_texture.texture = texture
	preview_texture.expand_mode = 1
	preview_texture.size = Vector2(30, 30)
	var preview = Control.new()
	preview.add_child(preview_texture)
	
	set_drag_preview(preview)

	image_id = 2
	var data = {
		"preview_texture_texture": preview_texture.texture,
		"image_id": image_id
	}
	return data
