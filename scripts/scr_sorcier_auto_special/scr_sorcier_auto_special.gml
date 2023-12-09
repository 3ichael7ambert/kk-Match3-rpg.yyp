function scr_sorcier_auto_special() {

	//Prevent enemy attack
	with(obj_fenix)
	{
	 state =0;
	} 

	// if the auto container 5 is ocuped
	if  (global.auto_container[5].free=false)
	{


	//accelerate background
	if not (__background_get( e__BG.HSpeed, 1 ) ==0)
	{
	__background_set( e__BG.HSpeed, 1, -1 );
	__background_set( e__BG.HSpeed, 2, -2 );
	__background_set( e__BG.HSpeed, 3, -3 );
	__background_set( e__BG.HSpeed, 4, -4 );
	}

	// accelerate animation (Spine use interpolated animation so, 
	//if you have 20 steps image index (spine convert this to double or triple depending of the larger room speed we have)
	with(obj_sorcier)
	{
	image_speed = 2;
	}
	with ( obj_fenix)
	{
	image_speed = 0.5;
	} 
	// Else, if fifth container is free we create the slowmotion
	}
	else if (global.auto_container[5].free=true)
	{
	//deccelerate image_speed.
	with (obj_sorcier)
	{
	image_speed = 1;
	if (state==1) or (state==6)
	{

	if (image_index >14)
	{
	  if not instance_exists(obj_controller_shockwave)
	  {instance_create(obj_fenix.x,obj_fenix.y,obj_controller_shockwave);}
	}  

	}
	//prevent bad movements in slow motion.
	else if (state =2) or (state==4) or (state==5)
	{
	 x = x;
	}
	}
	//deccelerate background
	if not (__background_get( e__BG.HSpeed, 1 ) ==0)
	{
	__background_set( e__BG.HSpeed, 1, -0.2 );
	__background_set( e__BG.HSpeed, 2, -0.5 );
	__background_set( e__BG.HSpeed, 3, -0.75 );
	__background_set( e__BG.HSpeed, 4, -1 );
	}
	//cos we have diferent speed values we make a slowmotion with the shockwave effect
	if instance_exists(obj_controller_shockwave)
	{
	 with (obj_controller_shockwave)
	 {
	  var_shock_amplitude = 7;
	  var_shock_refraction = 0.30;
	  var_speed = 0.010;
	  tiempo_honda = tiempo_honda +0.9;
	 }
	}  
	//deccelerate fenix image_speed
	with ( obj_fenix)
	{
	image_speed = 0.5;
	} 
	// with this conditional we exit of this special state, if not instance of autoskill are detected,
	// we return to original values..
	}
	if not instance_exists (obj_auto_skill)
	{
	 {
	with ( obj_fenix)
	{
	 image_speed = 1;
	} 
	with(obj_sorcier)
	{
	image_speed = 1;
	}

	if not __background_get( e__BG.HSpeed, 0 )==0
	{
	__background_set( e__BG.HSpeed, 1, -0.5 );
	__background_set( e__BG.HSpeed, 2, -1 );
	__background_set( e__BG.HSpeed, 3, -1.5 );
	__background_set( e__BG.HSpeed, 4, -2 );
	}
	//Return the normal color of block objects.
	for(var i =0;i<12;i++)
	{
	 global.auto_container[i].image_index = 0;
	}
	instance_activate_object(obj_grid_block);
	instance_activate_object(obj_puzzle_piece);  
	special =0;
	}

	}



}
