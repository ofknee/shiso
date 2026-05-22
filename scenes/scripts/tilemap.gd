extends Node2D
#





#enum layers {
	#level0 = 0,
	#level1 = 1,
	#level2 = 2
#}
#
#const light_grassy_atlas_pos = Vector2i(0,0)
#const main_source = 0
#
#
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#var tile_map_layer = 0 
	#var tile_map_cell_position = Vector2i(0,0) 
	##var tile_data = tile_map.get_cell_tile_data(tile_map_layer, tile_map_cell_position)
	##if tile_data: 
		##var tile_map_cell_source_id = tile_map.get_cell_source_id(tile_map_layer, tile_map_cell_position); 
		##var tile_map_cell_atlas_coords = tile_map.get_cell_atlas_coords(tile_map_layer, tile_map_cell_position) 
		##var tile_map_cell_alternative = tile_map.get_cell_alternative_tile(tile_map_layer, tile_map_cell_position) 
		##var new_tile_map_cell_position = tile_map_cell_position + Vector2i.RIGHT 
		##tile_map.set_cell(tile_map_layer, new_tile_map_cell_position, tile_map_cell_source_id, tile_map_cell_atlas_coords, tile_map_cell_alternative)
#
#
#
	##for y in 3:
		##for x in 3:
			##set_cell(layers.level0, Vector2i(2+x,2+y), main_source, light_grassy_atlas_pos)
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
