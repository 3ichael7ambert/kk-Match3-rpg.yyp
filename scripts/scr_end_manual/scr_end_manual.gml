function scr_end_manual() {
	if instance_exists(obj_particle_skill)
	{
	  with(obj_particle_skill)
	  {
	   visible = false;
	  }
	} 
	with(obj_skill_container)
	{
	 visible=false;
	} 
	with(obj_container_controller)
	{
	 visible = false;
	} 
	with (obj_grid_block)
	{
	 image_index =0;
	} 
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
