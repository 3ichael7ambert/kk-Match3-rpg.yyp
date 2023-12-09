/// @description prevent continuing create pieces,particles,skills
function scr_end_auto() {
	if (instance_exists(obj_auto_skill))
	{
	obj_auto_skill.visible=false;
	}
	// Prevent touch the block with the mouse Leave event of the "obj_block" object.
	//Set image_index to 0
	with (obj_grid_block)
	{
	 image_index =0;
	} 
	with (obj_auto_container)
	{
	 visible=false;
	} 
	//Tiny effect with puzzle piece
	with(obj_puzzle_piece)
	{
	image_xscale = lerp(image_xscale,0,0.1);
	image_yscale = image_xscale;
	if (image_xscale <=0.1)
	{
	visible=false;
	}
	}



}
