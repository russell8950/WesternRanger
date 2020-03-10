/// @description Insert description here
// You can write your code in this editor

switch(menu_index) {

	case 0:
		audio_play_sound(snd_revolver,1,false);
		room_goto(room_town);
		audio_stop_sound(snd_title);
		instance_destroy(obj_title);
		break;
	case 1:
		game_end();
		break;
}

