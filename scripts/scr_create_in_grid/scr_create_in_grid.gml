/// @description  Creates a new instance adhered to a grid.
function scr_create_in_grid(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	/* 

	argument0 -- the grid's start x position,
	argument1 -- the grid's start y position,
	argument2 -- the horizontal space between objects in the grid.
	argument3 -- the vertical space between objects in the grid.
	argument4 -- the new object's depth
	argument5 -- the object index of the to be created instance.
	argument6 -- the column that the object will be placed.
	argument7 -- the row that the object will be placed.
	*/
	var new_instance, x_pos, y_pos;

	// The horizontal and vertical placement of the sprites
	x_pos = argument0 + argument2 * argument6;
	y_pos = argument1 + argument3 * argument7;
	// Creating the instance
	new_instance = instance_create(x_pos, y_pos, argument5);

	// Setting up the depht of new instance
	new_instance.depth = argument4;
	// The image_speed is set to 0 on the new instance.
	new_instance.image_speed = 0;
	// Two instanced variables are set to the new object representing its current column and row.
	new_instance.col = argument6;
	new_instance.row = argument7;
	// Adjusts scaled object
	new_instance.image_xscale = argument8;
	new_instance.image_yscale = argument8;
	// The new instance is returned.
	return new_instance;



}
