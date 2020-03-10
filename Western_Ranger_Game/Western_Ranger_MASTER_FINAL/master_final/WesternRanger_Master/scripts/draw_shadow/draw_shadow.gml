///@description Shadow controller
///@param global.time

//draw_sprite_ext(sprite_index, image_index, x-5, y-5, image_xscale, image_yscale, 0, c_black, .5);
// Need to set a timer and adjust these variables for time of day

//time = global.time;
time = argument0;
//show_debug_message(time);
if ( time <= 0.2 ) {
	xs = 0;
	ys = 0;
} else if ( time > 0.2 && time <= 0.3 ) {
	xs = 15;
	ys = 30;
} else if ( time > 0.3 && time <= 0.4 ) {
	xs = 7;
	ys = 20;
} else if ( time > 0.4 && time <= 0.5 ) {
	xs = 2;
	ys = 10;
} else if ( time > 0.5 && time <= 0.6 ) {
	xs = -2;
	ys = 10;
} else if ( time > 0.6 && time <= 0.7 ) {
	xs = -7;
	ys = 20;
} else if ( time > 0.7 && time <= 0.8 ) {
	xs = -15;
	ys = 30;
} else if ( time > 0.8 && time <= 0.9 ) {
	xs = 0;
	ys = 0;
} else {	
	xs = 0;
	ys = 0;
}
	
	
var xShadow = xs;
var yShadow = ys;

var objFog = gpu_get_fog();
objFog[0] = true;
objFog[1] = c_black;
objFog[2] = 0;
objFog[3] = 1;

gpu_set_fog(objFog);
//show_debug_message("THis is in draw_shadow before error");
//show_debug_message(sprite_index);

draw_sprite_pos(sprite_index, image_index, x - (sprite_width/2) - xShadow, y - yShadow, x + (sprite_width/2) - xShadow, y - yShadow, x + (sprite_width/2), y, x - (sprite_width/2), y, .5);

gpu_set_fog(false, c_white, 0, 0);

