if(global.itemDefinitions[ItemType.food, ItemProperties.amount] > 0) {
	global.myHealth += 1;
	inv_RemoveItem(ItemType.food);
}
else {
	// play grumbling audio here - from the stomach
}