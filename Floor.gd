extends TileMap

func _ready():
	var _tileset = get_tileset()
	var tile_names = ["MapTile_006","MapTile_007","MapTile_010", "MapTile_011", "MapTile_014", "MapTile_015"]
	var all = get_used_cells()
	for v in all:
		randomize()
		var tile_name = tile_names[randi() % tile_names.size()]
		set_cellv(v, _tileset.find_tile_by_name(tile_name))