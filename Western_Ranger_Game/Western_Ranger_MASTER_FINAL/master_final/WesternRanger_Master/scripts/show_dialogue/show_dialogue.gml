var _npcType = argument0;

switch (_npcType) {
	
	case npcTypes.bartender:
		scr_text("Thank you for buying food, would you like some more? (press E to buy)",2,obj_bartender.x+100,obj_bartender.y+100);
		if(keyboard_check_pressed(ord("E"))) {
			use_Money(ItemType.food,1,1);
		}
		break;
		
	case npcTypes.shopkeeper:
		scr_text("Thank you for buying ammo, would you like some more? (press E to buy)",2,obj_shopkeeper.x+100,obj_shopkeeper.y+100);
		if(keyboard_check_pressed(ord("E"))) {
			var type = irandom_range(1,3);
			if (type == 1) {
				use_Money(ItemType.weapon1,1,1);
			}
			else if (type == 2) {
				use_Money(ItemType.weapon2,1,1);
			}
			else if (type == 3) {
				use_Money(ItemType.weapon3,1,1);
			}
		}
		break;
}