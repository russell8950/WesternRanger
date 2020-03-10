/// @description Day/Night Controller
// Stop auto draw
application_surface_draw_enable(false);

globalvar delta_alarm;
delta_alarm = 30;
globalvar time;
time = 0.5;


// Set shader
shader = day_night;
uniform_color = shader_get_uniform(shader, "col");
u_con_sat_brt = shader_get_uniform(shader, "con_sat_brt");

// define color variables
color_mix = -1;
color[0,0] = undefined;

con_sat_brt_mix = -1;

previous = -1;
next = -1;

// Set up times of day and night
scr_add_key_time(160, 150, 110, 0.7, 0.6, 0.00, 5.50, 0.5);	    // mid night
scr_add_key_time(130, 120, 80, 0.8, 0.9, 0.00, 2.00, 0.75);		// late night
scr_add_key_time(220, 200, 175, 1.1, 1.3, 0.05, 0.80, 0.80);	// dawn
scr_add_key_time(250, 235, 200, 1.2, 1.1, 0.10, 0.00, 1.00);	// morning
scr_add_key_time(255, 250, 230, 1.3, 0.9, 0.15, 0.00, 1.00);	// noon
scr_add_key_time(250, 240, 200, 1.4, 1.1, 0.15, 0.00, 1.00);	// late after-noon
scr_add_key_time(220, 210, 170, 1.5, 1.4, 0.25, 0.80, 0.80);	// dusk
scr_add_key_time(190, 180, 140, 0.9, 0.9, 0.00, 2.00, 0.75);	// early night


// Get the number of times
number_of_times = array_height_2d(color);
