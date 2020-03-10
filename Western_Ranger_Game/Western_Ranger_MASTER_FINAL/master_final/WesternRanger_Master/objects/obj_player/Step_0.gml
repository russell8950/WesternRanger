/// @description Insert description here
// You can write your code in this editor

if(!global.interacting) {
	if(keyboard_check(ord("A")))
	{
		if(keyboard_check(ord("W")))
		{
			//Character moves up and left
			movement = Movement.diagUpLeft;
		
		}
		else if(keyboard_check(ord("S")))
		{
			//Character moves down and left
			movement = Movement.diagDownLeft;
		
		}
		else
		{
			//Character left
			movement = Movement.left;
		}
	}
	//Right Press checks for diagonals.
	else if(keyboard_check(ord("D")))
	{
		if(keyboard_check(ord("W")))
		{
			//Character moves up and right
			movement = Movement.diagUpRight;
		
		}
		else if(keyboard_check(ord("S")))
		{
			//Character moves down and right
			movement = Movement.diagDownRight;
		
		}
		else
		{
			//Character moves right
			movement = Movement.right;
		
		}
	}
	else if(keyboard_check(ord("W")))
	{
		//Character moves up
		movement = Movement.up;
	}
	else if(keyboard_check(ord("S")))
	{
		//Character moves down
		movement = Movement.down;
	}
	else
	{
		//Character does not move
		movement = Movement.idle;
	}


	if(movement != Movement.idle)
	{
		if(keyboard_check(vk_shift))
		{
			//Character runs when you hold down the shift key. He moves twice as fast when he runs
			self.speed = 20;
		}
		else
		{
			//Character is walking
			self.speed = 10;
		}
	}

	if(mouse_check_button_pressed(mb_left) and canAttack) {
		action = Actions.shoot;
	}
	else if (keyboard_check_pressed(ord("Q")) and global.myHealth < 10) {
		action = Actions.eat;
	}
	else if (keyboard_check_pressed(ord("E"))) {
		action = Actions.interact;
	}
	else {
		action = Actions.none;
	}


	pointDirection = point_direction(x,y,mouse_x,mouse_y);
		
	if (pointDirection > 337.5 and pointDirection < 360 or pointDirection >= 0 and pointDirection <= 22.5) { // right
		temp_index = spr_player_right;
		sprite_index = temp_index;
		obj_player.image_yscale = 1;
		obj_player.image_xscale = 1;
		if(equipped >= 1 and equipped <= 3) {
			switch(equipped){
				case 1:					
					sg.image_index = 0;
					sg.image_xscale = -1;
					sg.image_yscale = 1;
					sg.x = obj_player.x+68;
					sg.y = obj_player.y+8;
					sg.depth = 12;
					break;
				case 2:
					p.image_index = 0;
					p.image_xscale = -1;
					p.image_yscale = 1;
					p.x = obj_player.x+48;
					p.y = obj_player.y-48;
					p.depth = 12;
					break;
				case 3:
					r.image_index = 0;
					r.image_xscale = -1;
					r.image_yscale = 1;
					r.x = obj_player.x+32;
					r.y = obj_player.y-40;
					r.depth = 12;
					break;
			}
		}
	}
	else if (pointDirection > 22.5 and pointDirection <= 67.5) { // upDiagRight
		temp_index = spr_player_updiag;
		sprite_index = temp_index;
		obj_player.image_yscale = 1;
		obj_player.image_xscale = 1;
		if(equipped >= 1 and equipped <= 3) {
			switch(equipped){
				case 1:
					sg.image_index = 4;
					sg.image_xscale = 1;
					sg.image_yscale = 1;
					sg.x = obj_player.x+48;
					sg.y = obj_player.y-32;
					sg.depth = 12;
					break;
				case 2:
					p.image_index = 4;
					p.image_xscale = 1;
					p.image_yscale = 1;
					p.x = obj_player.x+32;
					p.y = obj_player.y-68;
					p.depth = 12;
					break;
				case 3:
					r.image_index = 4;
					r.image_xscale = 1;
					r.image_yscale = 1;
					r.x = obj_player.x+32;
					r.y = obj_player.y-64;
					r.depth = 12;
					break;
			}
		}
	}
	else if (pointDirection > 67.5 and pointDirection <= 112.5) { // Up
		temp_index = spr_player_back;
		sprite_index = temp_index;
		obj_player.image_yscale = 1;
		obj_player.image_xscale = 1;
		if(equipped >= 1 and equipped <= 3) {
			switch(equipped){
				case 1:
					sg.image_index = 1;
					sg.image_xscale = 1;
					sg.image_yscale = 1;
					sg.x = obj_player.x+16;
					sg.y = obj_player.y-32;
					sg.depth = 12;
					break;
				case 2:
					p.image_index = 1;
					p.image_xscale = 1;
					p.image_yscale = 1;
					p.x = obj_player.x+16;
					p.y = obj_player.y-32;
					p.depth = 12;
					break;
				case 3:
					r.image_index = 1;
					r.image_xscale = 1;
					r.image_yscale = 1;
					r.x = obj_player.x+16;
					r.y = obj_player.y-56;
					r.depth = 12;
					break;
			}
		}
	}
	else if (pointDirection > 112.5 and pointDirection <= 157.5) { // UpDiagLeft
		temp_index = spr_player_updiag;
		sprite_index = temp_index;
		obj_player.image_yscale = 1;
		obj_player.image_xscale = -1;
		if(equipped >= 1 and equipped <= 3) {
			switch(equipped){
				case 1:
					sg.image_index = 2;
					sg.image_xscale = 1;
					sg.image_yscale = 1;
					sg.x = obj_player.x-48;
					sg.y = obj_player.y-32;
					sg.depth = 12;
					break;
				case 2:
					p.image_index = 2;
					p.image_xscale = 1;
					p.image_yscale = 1;
					p.x = obj_player.x-32;
					p.y = obj_player.y-68;
					p.depth = 12;
					break;
				case 3:
					r.image_index = 2;
					r.image_xscale = 1;
					r.image_yscale = 1;
					r.x = obj_player.x-32;
					r.y = obj_player.y-60;
					r.depth = 12;
					break;
			}
		}
	}///1
	else if (pointDirection > 157.5 and pointDirection <= 202.5) { // Left
		temp_index = spr_player_right;
		sprite_index = temp_index;
		obj_player.image_yscale = 1;
		obj_player.image_xscale = -1;
		if(equipped >= 1 and equipped <= 3) {
			switch(equipped){
				case 1:
					sg.image_index = 0;
					sg.image_xscale = 1;
					sg.image_yscale = 1;
					sg.x = obj_player.x-70;
					sg.y = obj_player.y+8;
					sg.depth = 20;
					break;
				case 2:
					p.image_index = 0;
					p.image_xscale = 1;
					p.image_yscale = 1;
					p.x = obj_player.x-52;
					p.y = obj_player.y-48;
					p.depth = 20;
					break;
				case 3:
					r.image_index = 0;
					r.image_xscale = 1;
					r.image_yscale = 1;
					r.x = obj_player.x-28;
					r.y = obj_player.y-48;
					r.depth = 20;
					break;
			}
		}	
	}///
	else if (pointDirection > 202.5 and pointDirection <= 247.5) { // downDaigLeft
		temp_index = spr_player_downdiag;
		sprite_index = temp_index;
		obj_player.image_yscale = 1;
		obj_player.image_xscale = -1;
		if(equipped >= 1 and equipped <= 3) {
			switch(equipped){
				case 1:
					sg.image_index = 3;
					sg.image_xscale = 1;
					sg.image_yscale = 1;
					sg.x = obj_player.x-32;
					sg.y = obj_player.y+40;
					sg.depth = 0;
					break;
				case 2:
					p.image_index = 3;
					p.image_xscale = 1;
					p.image_yscale = 1;
					p.x = obj_player.x-16;
					p.y = obj_player.y-32;
					p.depth = 0;
					break;
				case 3:
					r.image_index = 3;
					r.image_xscale = 1;
					r.image_yscale = 1;
					r.x = obj_player.x-16;
					r.y = obj_player.y-32;
					r.depth = 0;
					break;
			}//
		}
	}
	else if (pointDirection > 247.5 and pointDirection <= 292.5) { // down
		temp_index = spr_player_front;
		sprite_index = temp_index;
		obj_player.image_yscale = 1;
		obj_player.image_xscale = 1;
		if(equipped >= 1 and equipped <= 3) {
			switch(equipped){
				case 1:
					sg.image_index = 1;
					sg.image_xscale = 1;
					sg.image_yscale = -1;
					sg.x = obj_player.x-8;
					sg.y = obj_player.y-64;
					sg.depth = 0;
					break;
				case 2:
					p.image_index = 1;
					p.image_xscale = 1;
					p.image_yscale = -1;
					p.x = obj_player.x;
					p.y = obj_player.y;
					p.depth = 0;
					break;
				case 3:
					r.image_index = 1;
					r.image_xscale = 1;
					r.image_yscale = -1;
					r.x = obj_player.x;
					r.y = obj_player.y;
					r.depth = 0;
					break;
			}
		}
	}
	else if (pointDirection > 292.5 and pointDirection <= 337.5) { // downDiagRight
		temp_index = spr_player_downdiag;
		sprite_index = temp_index;
		obj_player.image_yscale = 1;
		obj_player.image_xscale = 1;
		if(equipped >= 1 and equipped <= 3) {
			switch(equipped){
				case 1:
					sg.image_index = 5;
					sg.image_xscale = 1;
					sg.image_yscale = 1;
					sg.x = obj_player.x+24;
					sg.y = obj_player.y+40;
					sg.depth = 0;
					break;
				case 2:
					p.image_index = 5;
					p.image_xscale = 1;
					p.image_yscale = 1;
					p.x = obj_player.x+12;
					p.y = obj_player.y-32;
					p.depth = 0;
					break;
				case 3:
					r.image_index = 5;
					r.image_xscale = 1;
					r.image_yscale = 1;
					r.x = obj_player.x+12;
					r.y = obj_player.y-32;
					r.depth = 0;
					break;
			}
		}
	}
	
	//	Movement switch statement. Changes sprite and direction based on the movement state.
	switch (movement) {
		
	    case Movement.idle:
			self.speed = 0;
			self.image_index = 0;
			break;
	    case Movement.left:
			self.direction = 180;
			break;
	    case Movement.diagDownLeft:
			self.direction = 225;
			break;
	    case Movement.diagUpLeft:
			self.direction = 135;
			break;
	    case Movement.right:
			self.direction = 0;
			break;
	    case Movement.diagDownRight:
			self.direction = 315;
			break;
	    case Movement.diagUpRight:
			self.direction = 45;
			break;
	    case Movement.up:
			self.direction = 90;
			break;
	    case Movement.down:
			self.direction = 270;
			break;
	}

	switch (action) {
	
		case Actions.none:
			// sprite_index = temp_index;
			break;
		
		case Actions.shoot:
			switch (equipped) {
				
				case Equipped.none:
					// Play a sound to tell the playe they have nothing equipped
					break;
					
				case Equipped.shotgun:
					inv_UseItem(ItemType.weapon1);
					canAttack = false;
					alarm_set(1,30);
					break;
				
				case Equipped.revolver:
					inv_UseItem(ItemType.weapon2);
					canAttack = false;
					alarm_set(2,15);
					break;
				
				case Equipped.rifle:
					inv_UseItem(ItemType.weapon3);
					canAttack = false;
					alarm_set(3,40);
					break;
			}
			break;
	
		case Actions.eat:
			inv_UseItem(ItemType.food);
			break;
		
		case Actions.interact:
			var the_npc = instance_nearest(x,y,obj_npc);
			if (distance_to_object(the_npc) <= 150) {
				show_dialogue(the_npc.theNPC);
			}
			break;
	}
}
