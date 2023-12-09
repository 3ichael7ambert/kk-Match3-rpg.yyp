/// @description  if no enemys
function scr_sorcier_run() {
	{
	if not (__background_get( e__BG.HSpeed, 1 ) = -1)
	{
	__background_set( e__BG.HSpeed, 1, -0.5 );
	__background_set( e__BG.HSpeed, 2, -1 );
	__background_set( e__BG.HSpeed, 3, -1.5 );
	__background_set( e__BG.HSpeed, 4, -2 );
	}
	if sprite_index != running
	{
	 image_index = 0;
	 sprite_index=(running);
	}
	if point_distance(x,y,start_x,start_y)>1
	{
	// assign the initial animation

	hspeed = -2
	x=lerp(x-hspeed,start_x,0.05)
	}
	else
	{
	hspeed =0;
	}
	time_battle -=1;
	if (time_battle <=0)
	{
	instance_create(800,-400,obj_fenix);
	state=8;
	}  
	}



}
