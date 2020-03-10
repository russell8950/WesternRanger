/// @description Insert description here
// You can write your code in this editor

if(global.previous != room) {
	room_goto(global.previous);
	obj_player.x = 998;
	obj_player.y = 1995;
}
else {
	global.previous = room;
	room_goto(room_shop);
	obj_player.x = 674;
	obj_player.y = 660;
}