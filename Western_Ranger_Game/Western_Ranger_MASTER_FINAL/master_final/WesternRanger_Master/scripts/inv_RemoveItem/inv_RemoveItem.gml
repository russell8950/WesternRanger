var _type = argument0;
var _indexOfGivenType = array_find_index(global.inventory, _type);

if(_indexOfGivenType != -1) {
	global.itemDefinitions[_type, ItemProperties.amount] -= 1;
	
	if(global.itemDefinitions[_type, ItemProperties.amount] < 0 ) {
		global.inventory[_indexOfGivenType] = ItemType.none;
	}
}

