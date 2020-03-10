/// @description Draw Inventory

if(global.show_inventory) {
	
	/**
	if (room == room_saloon or room == room_shop) {
		draw_sprite_ext(spr_inventoryItemHolder, -1, guiHolderPosX,0,1,1,0,c_white,1);
		
		for (var i = 0; i < MAX_ACTIVE_INV_ITEMS; i++) {
	
			var itemDefIndex = global.inventory[i];
			//show_debug_message("In the drawgui event of inv_man");
			//show_debug_message(inventory[i]);
			//show_debug_message(MAX_ACTIVE_INV_ITEMS);
		
			if(itemDefIndex != ItemType.none) {
			
				//show_debug_message(itemDefinitions[itemDefIndex,ItemProperties.sprite.image_xscale]);
				draw_sprite_ext(global.itemDefinitions[itemDefIndex, ItemProperties.sprite], -1,
				(guiHolderPosX + guiHolderPad)*.80 + (guiHolderSlotOffsetX * i)*.5,
				(guiHolderPosY + guiHolderPad)*.5, .5,.5,0,c_white,1
				);
		
				draw_text_ext_transformed_colour((guiHolderPosX + guiHolderPad)*.8 + (guiHolderSlotOffsetX * i)*.5,
				(guiHolderPosY + guiHolderPad + 30)*.4,
				string(global.itemDefinitions[itemDefIndex, ItemProperties.amount]),
				10,128,1,1,0,
				textColor1, textColor2,textColor3,textColor4,textAlpha
				);
			}
		}
		
		draw_healthbar(10, 10, 100, 20, global.myHealth*10, c_black, c_red, c_lime, 0, true, true);
	}
	**/
	
		draw_sprite(spr_inventoryItemHolder, -1, guiHolderPosX,0);
		
		for (var i = 0; i < MAX_ACTIVE_INV_ITEMS; i++) {
	
			var itemDefIndex = global.inventory[i];
			//show_debug_message("In the drawgui event of inv_man");
			//show_debug_message(inventory[i]);
			//show_debug_message(MAX_ACTIVE_INV_ITEMS);
		
			if(itemDefIndex != ItemType.none) {
			
				//show_debug_message(itemDefinitions[itemDefIndex,ItemProperties.sprite.image_xscale]);
				draw_sprite(global.itemDefinitions[itemDefIndex, ItemProperties.sprite], -1,
				(guiHolderPosX + guiHolderPad) + (guiHolderSlotOffsetX * i),
				(guiHolderPosY + guiHolderPad));
		
				draw_text_ext_transformed_colour((guiHolderPosX + guiHolderPad) + (guiHolderSlotOffsetX * i),
				(guiHolderPosY + guiHolderPad + 30),
				string(global.itemDefinitions[itemDefIndex, ItemProperties.amount]),
				10,128,2,2,0,
				textColor1, textColor2,textColor3,textColor4,textAlpha
				);
			}
		}
		
		draw_healthbar(room_width - 500, 0, room_width, 50, global.myHealth*10, c_black, c_red, c_lime, 0, true, true);
}