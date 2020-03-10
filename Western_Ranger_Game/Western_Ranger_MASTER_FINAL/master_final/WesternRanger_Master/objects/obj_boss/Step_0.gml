/// @description Insert description here
// You can write your code in this editor

if(self.theirHealth <= 0) {
	// insert destroy instance code here and update the score
	instance_destroy(self.id);
}


if (self.theirHealth <= 7 and self.theirHealth > 4) {
	self.mode = 1; // medium
}
else if (self.theirHealth <= 4) {
	self.mode = 2; // long
}


if(!collision_line(self.x,self.y,obj_player.x,obj_player.y,obj_block,1,0)) {
	self.sighted = true;
}
else {
	self.sighted = false;
}


if (self.mode == 0) {
	mp_potential_step_object(obj_player.x,obj_player.y,4,obj_block);

	var shootDirection = point_direction(x,y,obj_player.x,obj_player.y);

	if(distance_to_object(obj_player) <= 150 and self.canShoot and self.sighted) {
		
		audio_play_sound(snd_shotgun,1,false);
		
		var bul1 = instance_create_layer(x,y,"Instances_1",obj_bullet);
		var bul2 = instance_create_layer(x,y,"Instances_1",obj_bullet);
		var bul3 = instance_create_layer(x,y,"Instances_1",obj_bullet);
		var bul4 = instance_create_layer(x,y,"Instances_1",obj_bullet);
		var bul5 = instance_create_layer(x,y,"Instances_1",obj_bullet);
				
		bul1.speed = 15;
		bul1.direction = shootDirection;
		bul1.damage = 1;
		bul1.shotByPlayer = false;
	
			
		bul2.speed = 15;
		bul2.direction = (shootDirection - 10);
		bul2.damage = 1;
		bul2.shotByPlayer = false;
				
		bul3.speed = 15;
		bul3.direction = (shootDirection + 10);
		bul3.damage = 1;
		bul3.shotByPlayer = false;
				
		bul4.speed = 15;
		bul4.direction = (shootDirection - 20);
		bul4.damage = 1;
		bul4.shotByPlayer = false;
				
		bul5.speed = 15;
		bul5.direction = (shootDirection + 20);
		bul5.damage = 1;
		bul5.shotByPlayer = false;
	
		self.canShoot = false;
		alarm_set(0,50);
	}
}
else if (self.mode == 1) {
	if(distance_to_object(obj_player) > 400) {
		mp_potential_step_object(obj_player.x,obj_player.y,4,obj_block);
	}
	else {
		mp_potential_step_object(self.startX,self.startY,20,obj_block);
	}

	var shootDirection = point_direction(x,y,obj_player.x,obj_player.y);

	if(distance_to_object(obj_player) <= 600 and self.canShoot and self.sighted) {
		
		audio_play_sound(snd_revolver,1,false);
		
		var bul1 = instance_create_layer(x,y,"Instances_1",obj_bullet);
				
		bul1.speed = 20;
		bul1.direction = shootDirection;
		bul1.damage = 2;
		bul1.shotByPlayer = false;
		
		self.canShoot = false;
		alarm_set(0,30);
	}
}
else {
	if(distance_to_object(obj_player) > 600) {
		mp_potential_step_object(obj_player.x,obj_player.y,4,obj_block);
	}
	else {
		mp_potential_step_object(self.startX,self.startY,6,obj_block);
	}

	var shootDirection = point_direction(x,y,obj_player.x,obj_player.y);

	if(distance_to_object(obj_player) <= 1000 and self.canShoot and self.sighted) {
		
		audio_play_sound(snd_rifle,1,false);
		
		var bul1 = instance_create_layer(x,y,"Instances_1",obj_bullet);
				
		bul1.speed = 30;
		bul1.direction = shootDirection;
		bul1.damage = 3;
		bul1.shotByPlayer = false;
	
		self.canShoot = false;
		alarm_set(0,60);
	}
}