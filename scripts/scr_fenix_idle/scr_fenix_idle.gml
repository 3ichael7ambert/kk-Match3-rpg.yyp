function scr_fenix_idle() {
	// Change animation to idle
 
	   if  sprite_index!= fly_anim
	{
	image_index =0;
	sprite_index=(fly_anim);
	image_speed = 1;
	}

	if not (x= x_pos)
	{

	x= lerp(x,x_pos,0.05);
	y= lerp(y,y_pos,0.05);
	}


	// Count down to change to attack state
	time_attack-=1;

	if (time_attack<=0)
	{
	state=1;
	}



}
