/// @description Insert description here
// You can write your code in this editor
menu_x = 1600;
menu_y = 1800;
button_h = 150;

audio_play_sound(snd_title, 10, true);

// buttons
button[0] = "New Game";
button[1] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;
