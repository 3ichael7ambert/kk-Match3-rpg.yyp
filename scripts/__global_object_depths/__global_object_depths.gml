function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_grid_manager
	global.__objectDepths[1] = 0; // obj_puzzle_piece
	global.__objectDepths[2] = 0; // obj_grid_block
	global.__objectDepths[3] = 2; // obj_controller_shockwave
	global.__objectDepths[4] = -2; // obj_particle_manager
	global.__objectDepths[5] = -100; // obj_controller_mosaic
	global.__objectDepths[6] = 0; // obj_main_menu
	global.__objectDepths[7] = 3; // obj_fenix
	global.__objectDepths[8] = 0; // obj_iceball
	global.__objectDepths[9] = 3; // obj_sorcier
	global.__objectDepths[10] = 0; // obj_magic
	global.__objectDepths[11] = 0; // obj_life
	global.__objectDepths[12] = 0; // obj_arrow
	global.__objectDepths[13] = 0; // obj_bullet
	global.__objectDepths[14] = 0; // obj_skills_creator
	global.__objectDepths[15] = 0; // obj_skill_container
	global.__objectDepths[16] = -1; // obj_particle_skill
	global.__objectDepths[17] = -1; // obj_container_controller
	global.__objectDepths[18] = 0; // obj_container_creator
	global.__objectDepths[19] = 0; // obj_auto_container
	global.__objectDepths[20] = -1; // obj_auto_skill
	global.__objectDepths[21] = 0; // obj_auto_controller


	global.__objectNames[0] = "obj_grid_manager";
	global.__objectNames[1] = "obj_puzzle_piece";
	global.__objectNames[2] = "obj_grid_block";
	global.__objectNames[3] = "obj_controller_shockwave";
	global.__objectNames[4] = "obj_particle_manager";
	global.__objectNames[5] = "obj_controller_mosaic";
	global.__objectNames[6] = "obj_main_menu";
	global.__objectNames[7] = "obj_fenix";
	global.__objectNames[8] = "obj_iceball";
	global.__objectNames[9] = "obj_sorcier";
	global.__objectNames[10] = "obj_magic";
	global.__objectNames[11] = "obj_life";
	global.__objectNames[12] = "obj_arrow";
	global.__objectNames[13] = "obj_bullet";
	global.__objectNames[14] = "obj_skills_creator";
	global.__objectNames[15] = "obj_skill_container";
	global.__objectNames[16] = "obj_particle_skill";
	global.__objectNames[17] = "obj_container_controller";
	global.__objectNames[18] = "obj_container_creator";
	global.__objectNames[19] = "obj_auto_container";
	global.__objectNames[20] = "obj_auto_skill";
	global.__objectNames[21] = "obj_auto_controller";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
