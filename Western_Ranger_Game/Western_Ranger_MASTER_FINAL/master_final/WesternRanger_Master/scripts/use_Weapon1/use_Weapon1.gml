if(global.itemDefinitions[ItemType.weapon1, ItemProperties.amount] > 0) {
	
	var pointDirection = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	
	// Play some Shotgun shot audio here!
				
	audio_play_sound(snd_shotgun,1,false);
	
	var inst1 = instance_create_layer(obj_shotgun.x,obj_shotgun.y,"Instances_1",obj_bullet);
	var inst2 = instance_create_layer(obj_shotgun.x,obj_shotgun.y,"Instances_1",obj_bullet);
	var inst3 = instance_create_layer(obj_shotgun.x,obj_shotgun.y,"Instances_1",obj_bullet);
	var inst4 = instance_create_layer(obj_shotgun.x,obj_shotgun.y,"Instances_1",obj_bullet);
	var inst5 = instance_create_layer(obj_shotgun.x,obj_shotgun.y,"Instances_1",obj_bullet);
	
	inst1.persistent = true;
	inst2.persistent = true;
	inst3.persistent = true;
	inst4.persistent = true;
	inst5.persistent = true;
	
	if (pointDirection > 337.5 and pointDirection < 360 or pointDirection >= 0 and pointDirection <= 22.5) { // right
		inst1.x = obj_shotgun.x+56;
		inst1.y = obj_shotgun.y-64;
		inst2.x = obj_shotgun.x+56;
		inst2.y = obj_shotgun.y-64;
		inst3.x = obj_shotgun.x+56;
		inst3.y = obj_shotgun.y-64;
		inst4.x = obj_shotgun.x+56;
		inst4.y = obj_shotgun.y-64;
		inst5.x = obj_shotgun.x+56;
		inst5.y = obj_shotgun.y-64;
	}
	else if (pointDirection > 22.5 and pointDirection <= 67.5) { // upDiagRight
		inst1.x = obj_shotgun.x+40;
		inst1.y = obj_shotgun.y-80;
		inst2.x = obj_shotgun.x+40;
		inst2.y = obj_shotgun.y-80;
		inst3.x = obj_shotgun.x+40;
		inst3.y = obj_shotgun.y-80;
		inst4.x = obj_shotgun.x+40;
		inst4.y = obj_shotgun.y-80;
		inst5.x = obj_shotgun.x+40;
		inst5.y = obj_shotgun.y-80;
	}
	else if (pointDirection > 67.5 and pointDirection <= 112.5) { // Up
		inst1.x = obj_shotgun.x+16;
		inst1.y = obj_shotgun.y-96;
		inst2.x = obj_shotgun.x+16;
		inst2.y = obj_shotgun.y-96;
		inst3.x = obj_shotgun.x+16;
		inst3.y = obj_shotgun.y-96;
		inst4.x = obj_shotgun.x+16;
		inst4.y = obj_shotgun.y-96;
		inst5.x = obj_shotgun.x+16;
		inst5.y = obj_shotgun.y-96;
	}
	else if (pointDirection > 112.5 and pointDirection <= 157.5) { // UpDiagLeft
		inst1.x = obj_shotgun.x-24;
		inst1.y = obj_shotgun.y-80;
		inst2.x = obj_shotgun.x-24;
		inst2.y = obj_shotgun.y-80;
		inst3.x = obj_shotgun.x-24;
		inst3.y = obj_shotgun.y-80;
		inst4.x = obj_shotgun.x-24;
		inst4.y = obj_shotgun.y-80;
		inst5.x = obj_shotgun.x-24;
		inst5.y = obj_shotgun.y-80;
	}///
	else if (pointDirection > 157.5 and pointDirection <= 202.5) { // Left
		inst1.x = obj_shotgun.x-32;
		inst1.y = obj_shotgun.y-64;
		inst2.x = obj_shotgun.x-32;
		inst2.y = obj_shotgun.y-64;
		inst3.x = obj_shotgun.x-32;
		inst3.y = obj_shotgun.y-64;
		inst4.x = obj_shotgun.x-32;
		inst4.y = obj_shotgun.y-64;
		inst5.x = obj_shotgun.x-32;
		inst5.y = obj_shotgun.y-64;
	}///
	else if (pointDirection > 202.5 and pointDirection <= 247.5) { // downDaigLeft
		inst1.x = obj_shotgun.x-32;
		inst1.y = obj_shotgun.y-24;
		inst2.x = obj_shotgun.x-32;
		inst2.y = obj_shotgun.y-24;
		inst3.x = obj_shotgun.x-32;
		inst3.y = obj_shotgun.y-24;
		inst4.x = obj_shotgun.x-32;
		inst4.y = obj_shotgun.y-24;
		inst5.x = obj_shotgun.x-32;
		inst5.y = obj_shotgun.y-24;
	}
	else if (pointDirection > 247.5 and pointDirection <= 292.5) { // down
		inst1.x = obj_shotgun.x;
		inst1.y = obj_shotgun.y+96;
		inst2.x = obj_shotgun.x;
		inst2.y = obj_shotgun.y+96;
		inst3.x = obj_shotgun.x;
		inst3.y = obj_shotgun.y+96;
		inst4.x = obj_shotgun.x;
		inst4.y = obj_shotgun.y+96;
		inst5.x = obj_shotgun.x;
		inst5.y = obj_shotgun.y+96;
	}
	else if (pointDirection > 292.5 and pointDirection <= 337.5) { // downDiagRight
		inst1.x = obj_shotgun.x+24;
		inst1.y = obj_shotgun.y-24;
		inst2.x = obj_shotgun.x+24;
		inst2.y = obj_shotgun.y-24;
		inst3.x = obj_shotgun.x+24;
		inst3.y = obj_shotgun.y-24;
		inst4.x = obj_shotgun.x+24;
		inst4.y = obj_shotgun.y-24;
		inst5.x = obj_shotgun.x+24;
		inst5.y = obj_shotgun.y-24;
	}
	
	
	inst1.speed = 15;
	inst1.direction = pointDirection;
	inst1.damage = 1;
	inst1.shotByEnemy = false;
			
	inst2.speed = 15;
	inst2.direction = (pointDirection - 10);
	inst2.damage = 1;
	inst2.shotByEnemy = false;
				
	inst3.speed = 15;
	inst3.direction = (pointDirection + 10);
	inst3.damage = 1;
	inst3.shotByEnemy = false;
				
	inst4.speed = 15;
	inst4.direction = (pointDirection - 20);
	inst4.damage = 1;
	inst4.shotByEnemy = false;
				
	inst5.speed = 15;
	inst5.direction = (pointDirection + 20);
	inst5.damage = 1;
	inst5.shotByEnemy = false;
				
	inv_RemoveItem(ItemType.weapon1);
}
else {
	// Play out of ammo audio here
	// show_debug_message("you are out of Shot ammo");
}
