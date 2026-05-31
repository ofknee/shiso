extends CenterContainer

var index
var inventory = GlobalItem.inv
var item
var icon

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	index = int(name.split("_")[-1]) - 1
	icon = $TextureButton/item_icons
	icon.hide()
	
	#print("index", index) // 1 - 10


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if index <= (inventory.size()-1):
		if inventory[index] != item: #FIXME Invalid access of index '-1' on a base object of type: 'Array[GlobalItem]'.
			item = inventory[index]
			#icon.play(item.type)
			icon.show() 
			# icon.play(item.type)#FIXME
			_get_tooltip(Vector2.ZERO)
			
			
			# inventory print check
			var inventory_output = ""
			for i in inventory.size(): inventory_output += inventory[i].type + " · " 
			print(inventory_output)


func _on_texture_button_mouse_entered() -> void:
	icon.show()
	if item:
		#pass
		#print("hi")
		print(GlobalItem.INFO[item.type]["name"] , " • " , GlobalItem.INFO[item.type]["desc"])
	#pass# Replace with function body.
	#TODO - popup description on hover
	
	
func _get_tooltip(Vector2) -> String:
	return "test"
