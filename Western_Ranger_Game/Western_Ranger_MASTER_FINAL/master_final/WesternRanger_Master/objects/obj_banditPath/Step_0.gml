/// @description Insert description here
// You can write your code in this editor


if(self.theirHealth <= 0) {
	// insert destroy instance code here and update the score
	instance_destroy(self.id);
}

var shootDirection = point_direction(x,y,obj_player.x,obj_player.y);

if(distance_to_object(obj_player) <= 150 and self.canShoot) {
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
