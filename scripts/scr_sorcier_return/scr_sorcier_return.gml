function scr_sorcier_return() {
	// Return to start position (if not attacking).
	{
	special_attack2 = 120;
	if point_distance(x,y,start_x,start_y)>6
	{
	if sprite_index!=return_anim
	{
	image_index =0;
	sprite_index=(return_anim);
	}
	hspeed = -2

	x=lerp(x-hspeed,start_x,0.04)
	}
	else
	{
	state=0;
	} 
	}



}
