/// @description Insert description here
// Destroys the grid as a precaution
if ( ds_exists(ds_depthgrid, ds_type_grid) ) {
	ds_grid_destroy(ds_depthgrid);	
}
