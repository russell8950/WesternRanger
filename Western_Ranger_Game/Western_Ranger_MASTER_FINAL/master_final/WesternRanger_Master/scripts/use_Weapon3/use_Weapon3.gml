if(global.itemDefinitions[ItemType.weapon3, ItemProperties.amount] > 0) {
	
	var pointDirection = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	
	audio_play_sound(snd_rifle,1,false);
	
	if (pointDirection > 337.5 and pointDirection < 360 or pointDirection >= 0 and pointDirection <= 22.5) { // right
		var inst1 = instance_create_layer(obj_rifle.x+32,obj_rifle.y,"Instances_1",obj_bullet);
	}
	else if (pointDirection > 22.5 and pointDirection <= 67.5) { // upDiagRight
		var inst1 = instance_create_layer(obj_rifle.x+16,obj_rifle.y-8,"Instances_1",obj_bullet);
	}
	else if (pointDirection > 67.5 and pointDirection <= 112.5) { // Up
		var inst1 = instance_create_layer(obj_rifle.x+16,obj_rifle.y-16,"Instances_1",obj_bullet);
	}
	else if (pointDirection > 112.5 and pointDirection <= 157.5) { // UpDiagLeft
		var inst1 = instance_create_layer(obj_rifle.x-16,obj_rifle.y-16,"Instances_1",obj_bullet);
	}///
	else if (pointDirection > 157.5 and pointDirection <= 202.5) { // Left
		var inst1 = instance_create_layer(obj_rifle.x-32,obj_rifle.y-8,"Instances_1",obj_bullet);
	}///
	else if (pointDirection > 202.5 and pointDirection <= 247.5) { // downDaigLeft
		var inst1 = instance_create_layer(obj_rifle.x-32,obj_rifle.y,"Instances_1",obj_bullet);
	}
	else if (pointDirection > 247.5 and pointDirection <= 292.5) { // down
		var inst1 = instance_create_layer(obj_rifle.x,obj_rifle.y+8,"Instances_1",obj_bullet);
	}
	else if (pointDirection > 292.5 and pointDirection <= 337.5) { // downDiagRight
		var inst1 = instance_create_layer(obj_rifle.x+8,obj_rifle.y+8,"Instances_1",obj_bullet);
	}
	
	inst1.persistent = true;
	inst1.image_angle = pointDirection - 90;			
	inst1.speed = 30;
	inst1.direction = pointDirection;
	inst1.damage = 3;
	inst1.shotByEnemy = false;
				
	inv_RemoveItem(ItemType.weapon3);
}
else {
	// Play out of ammo audio here
	// show_debug_message("you are out of Rif ammo");
}
