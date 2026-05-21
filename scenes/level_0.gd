extends TileMapLayer


func _ready() -> void:
	var filled_tiles := get_used_cells() # ":" declare/lock var type
	for tile: Vector2i in filled_tiles:
		var neighbor_tiles := get_surrounding_cells(tile)
		for neighbor: Vector2i in neighbor_tiles: 
			if get_cell_source_id(neighbor) == -1: # -1 = empty
				set_cell(neighbor, 0, Vector2i(9,0))
