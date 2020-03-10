/// @description Insert description here
// You can write your code in this editor
/**
	Space + M = Dusty Gains $99
    Space + N = Dusty Gains 99 of all Ammo Types
    Space + B = Warps Dusty to Boss Room
    Space + F = Dusty gains 99 Food
**/

if (keyboard_check_pressed(ord("M"))) {
	inv_AddItem(ItemType.money,99);
}
if (keyboard_check_pressed(ord("N"))) {
	inv_AddItem(ItemType.weapon1,99);
	inv_AddItem(ItemType.weapon2,99);
	inv_AddItem(ItemType.weapon3,99);
}
if (keyboard_check_pressed(ord("B"))) {
	instance_create_layer(obj_player.x,obj_player.y,"Instances_1",obj_bossRoom);
}
if (keyboard_check_pressed(ord("F"))) {
	inv_AddItem(ItemType.food,99);
}
