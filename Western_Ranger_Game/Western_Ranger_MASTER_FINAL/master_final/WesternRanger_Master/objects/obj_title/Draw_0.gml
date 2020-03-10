/// @description Insert description here
// You can write your code in this editor
var i = 0;
draw_set_font(font_title);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(1600,1600,"Western Ranger");

repeat(buttons) {

	draw_set_color(c_black);
	if (menu_index == i) draw_set_color(c_red);
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}
