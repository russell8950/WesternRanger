/// @description Insert description here
// You can write your code in this editor


if(self.theirHealth <= 0) {
	// insert destroy instance code here and update the score
	instance_create_layer(self.x,self.y,"Instances_1",obj_money);
	instance_destroy(self.id);
}

if(!collision_line(self.x,self.y,obj_player.x,obj_player.y,obj_block,1,0)) {
	self.sighted = true;
	self.previous = [obj_player.x,obj_player.y];
}
else {
	self.sighted = false;
}

if(self.sighted) {
	
	path_end();
	
	if(distance_to_object(obj_player) > 400) {
		mp_potential_step_object(obj_player.x,obj_player.y,4,obj_block);
	}
	else {
		mp_potential_step_object(self.startX,self.startY,6,obj_block);
	}

	var shootDirection = point_direction(x,y,obj_player.x,obj_player.y);

	if(distance_to_object(obj_player) <= 600 and self.canShoot) {
		
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
else if (self.previous[0] != noone) {
	mp_potential_step_object(self.previous[0],self.previous[1],4,obj_block);
	if(self.x == self.previous[0] and self.y == self.previous[1]) {
		self.previous = [noone,noone];
	}
}
else {
	mp_potential_step_object(self.startX,self.startY,2,obj_block);
}
