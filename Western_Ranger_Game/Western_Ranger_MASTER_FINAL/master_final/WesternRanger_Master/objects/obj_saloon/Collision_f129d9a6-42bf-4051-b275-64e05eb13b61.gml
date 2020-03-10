/// @description Insert description here
// You can write your code in this editor

if(global.previous != room) {
	room_goto(global.previous);
	obj_player.x = 2412;
	obj_player.y = 1148;
}
else {
	global.previous = room;
	room_goto(room_saloon);
	obj_player.x = 646;
	obj_player.y = 677;
}
