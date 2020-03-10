/// @description Insert description here
// You can write your code in this editor

room_goto(room_desert);
obj_player.x = 181;
obj_player.y = 420;

audio_stop_all();
audio_play_sound(snd_desert,1,true);