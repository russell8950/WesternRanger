var _item = argument0;
var _amount = argument1;
var _cost = argument2;

if(global.itemDefinitions[ItemType.money, ItemProperties.amount] - _cost >= 0) {
	// go back and get the "item" here based on the input.
	inv_AddItem(_item,_amount);
	
	for(var i = 0; i < _cost; i++) {
		inv_RemoveItem(ItemType.money);
	}
}
else {
	// Display some GUI message about being out of money
	// or play a sound for out of money
}