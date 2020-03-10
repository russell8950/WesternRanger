/// @desc Attempt to add an item to inventory.

var _type = argument0;
var _amount = argument1;
var indexAddedAt = -2;

if(array_find_index(global.inventory, _type) == -1) {
	indexAddedAt = array_replace_value(global.inventory, ItemType.none, _type);
}

if(indexAddedAt != -1) {
	global.itemDefinitions[_type, ItemProperties.amount] += _amount;
}

return (indexAddedAt != -1);


