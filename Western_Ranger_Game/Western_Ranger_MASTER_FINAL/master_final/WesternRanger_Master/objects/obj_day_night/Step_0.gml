/// @description Set the blend of colors from array
// You can write your code in this editor
if (delta_alarm > 0 ) {
	delta_alarm -= 1;
	if ( delta_alarm <= 0 ) {
		time += .06;
		delta_alarm = 30;
		if (time >= 1 or time < 0) {
			time = 0;
		}
	}
	
} 
previous = min(floor(time * number_of_times), number_of_times - 1);
next = (previous + 1) mod number_of_times;

var diff_next_prev = (time - previous/number_of_times) * number_of_times;

color_mix = [lerp(color[previous,0], color[next,0], diff_next_prev),
			 lerp(color[previous,1], color[next,1], diff_next_prev),
			 lerp(color[previous,2], color[next,2], diff_next_prev)];
			 
con_sat_brt_mix = [lerp(con_sat_brt[previous,0], con_sat_brt[next,0], diff_next_prev),
				   lerp(con_sat_brt[previous,1], con_sat_brt[next,1], diff_next_prev),
				   lerp(con_sat_brt[previous,2], con_sat_brt[next,2], diff_next_prev),
				   lerp(con_sat_brt[previous,3], con_sat_brt[next,3], diff_next_prev),
				   lerp(con_sat_brt[previous,4], con_sat_brt[next,4], diff_next_prev)];
;

