/// @description Insert description here
// You can write your code in this editor
score = 0;

global.complete = false;

global.myHealth = 10;

global.show_inventory = true;
global.interacting = false;
global.previous = room_town;

enum Movement {
	idle,
	up,
	down,
	left,
	right,
	diagDownLeft,
	diagDownRight,
	diagUpLeft,
	diagUpRight
}

enum Actions {
	none,
	shoot,
	eat,
	interact
}

enum Equipped {
	none,
	shotgun,
	revolver,
	rifle
}

audio_play_sound(snd_saloon,1,true);
