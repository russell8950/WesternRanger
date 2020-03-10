/// @description Creates the weapon at the player location
/// @param number The index of weapon chosen
number = argument0;
if ( number == 1 ) {
	sg = instance_create_layer(obj_player.x + 32,obj_player.y - 64,"Instances_1",obj_shotgun);
	sg.persistent = true;
	show_debug_message(sg);
} else if  ( number == 2 ) {
	p = instance_create_layer(obj_player.x + 32,obj_player.y - 64,"Instances_1",obj_revolver);
	p.persistent = true;
} else if ( number == 3 ) {
	r = instance_create_layer(obj_player.x + 32,obj_player.y - 64,"Instances_1",obj_rifle);
	r.persistent = true;
}