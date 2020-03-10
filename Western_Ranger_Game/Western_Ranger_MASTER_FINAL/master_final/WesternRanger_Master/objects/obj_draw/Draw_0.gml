/// @description Checks if grid exists, if not creates and populates, then sorts it
//Check if list exists
if ( ds_exists(ds_depthgrid, ds_type_grid) ) {
	
	var dg = ds_depthgrid;
	var objNum = instance_number(obj_parent_depth);
	// Resize grid
	ds_grid_resize(dg, 2, objNum);
	
	var num = 0;	
	// Add objects to grid
	with(obj_parent_depth) {
		// Add new entry id
		dg[# 0,num] = id;
		
		// Add new entry Y value
		dg[# 1,num] = y;
		num += 1;
			
	}	
	// Sort the grid by Y values
	ds_grid_sort(dg, 1, true);
	
	// draw all objects by sorted list	
	var i = 0
	repeat ( objNum ) {
		// Draw objects
		var objectId = dg[# 0,i];
		
		with ( objectId ) {
			if ( objectId.sprite_index >= 0 ) {
				//show_debug_message("This is in the draw sending to draw_shadow");
				//show_debug_message(objectId);
				draw_shadow(time);
				draw_self();				
			}
		}
		i += 1;
	}
	ds_grid_clear(dg, 0);
}

