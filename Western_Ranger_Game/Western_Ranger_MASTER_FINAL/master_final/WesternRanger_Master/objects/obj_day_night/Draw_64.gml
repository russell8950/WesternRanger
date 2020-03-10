/// @description Insert description here
// You can write your code in this editor
shader_set(shader);
shader_set_uniform_f_array(uniform_color, color_mix);
shader_set_uniform_f_array(u_con_sat_brt, con_sat_brt_mix);
draw_surface(0, 0, application_surface);
shader_reset();

