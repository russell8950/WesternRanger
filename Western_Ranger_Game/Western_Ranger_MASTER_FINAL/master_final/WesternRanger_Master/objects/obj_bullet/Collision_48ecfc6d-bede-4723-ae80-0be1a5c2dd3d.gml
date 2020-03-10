/// @description Insert description here
// You can write your code in this editor

//apply damage then destroy instance here
if(!shotByPlayer) {
	global.myHealth -= self.damage;
	instance_destroy(self.id);
}
