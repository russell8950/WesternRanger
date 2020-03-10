/// @description Insert description here
// You can write your code in this editor

// Remove this and play it later - goes to ending room when the player dies
if(global.myHealth <= 0 and !global.complete) {
	global.complete = true;
	instance_destroy(obj_player);
	instance_destroy(obj_inventoryManager);
	room_goto(room_end);
	audio_stop_all();
}
