/// @description Calls creation script and passes weapon type
if ( instance_exists(obj_revolver) ) {
	instance_destroy(obj_revolver);
} else if ( instance_exists(obj_rifle) ) {
	instance_destroy(obj_rifle);			
} else if ( instance_exists(obj_shotgun) ) {
	instance_destroy(obj_shotgun);
}
equipped = Equipped.shotgun;
create_weapons(1);