extends TextureRect


func _can_drop_data(at_position, data):
	# Check if the dropped data is Texture2D
	if(data["image_id"] == 4):
		return data["preview_texture_texture"] is Texture2D

func _drop_data(at_position, data):
	# Set the texture to the dropped data
	texture = data["preview_texture_texture"]
	get_node("/root/Main").count += 1
	if(get_node("/root/Main").count == 4):
		get_node("/root/Main").count = 0
		get_tree().change_scene_to_file("res://end.tscn")
