/// @description  change animation to attack animation
function scr_fenix_attack() {

	image_speed = 2;
	if  sprite_index!=attack_anim
	{
	image_index =0;
	sprite_index=(attack_anim);
	}
	// IN the end  of animation create an iceball attack in the sorcier direction.
	if image_index >=50
	{
	instance_create(x-30,y-40,obj_iceball);
	// reset time attack (the state change cos time attack not equal 0) and end script.
	time_attack = irandom_range(300,600);
	state=0;
	}



}
