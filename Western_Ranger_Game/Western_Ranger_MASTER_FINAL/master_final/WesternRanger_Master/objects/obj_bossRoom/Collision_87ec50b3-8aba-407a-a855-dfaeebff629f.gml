/// @description Insert description here
// You can write your code in this editor

room_goto(room_boss);
obj_player.x = 1435;
obj_player.y = 3060;

audio_stop_all();
audio_play_sound(snd_bossRoom,1,true);