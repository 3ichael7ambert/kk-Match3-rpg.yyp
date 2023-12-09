/// @description  Stop and assign the idle animation
function scr_sorcier_idle() {
	// reset time battle and go to the next level (enemy)
	{
	x=start_x; //fix the intial position
	y=start_y;
	//reset time batlle
	time_battle = irandom_range(240,360);
	hspeed =0;
	//Assign idle animation
	if sprite_index !=idle_anim
	{
	sprite_index = idle_anim;
	}
	//stop the background speed
	if not (__background_get( e__BG.HSpeed, 1 ) = 0)
	{
	__background_set( e__BG.HSpeed, 1, 0 );
	__background_set( e__BG.HSpeed, 2, 0 );
	__background_set( e__BG.HSpeed, 3, 0 );
	__background_set( e__BG.HSpeed, 4, 0 );
	}
	}



}
