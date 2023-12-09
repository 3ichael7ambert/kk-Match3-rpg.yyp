/// @description /
///
function scr_sorcier_life() {

	hspeed=0;;
	if  sprite_index != life_anim
	{
	instance_create(x-30,y,obj_life);
	scr_create_particle(global.pt[18,0],global.pt[18,1]);
	image_index =0;
	sprite_index=life_anim;
	}
	// if attack animation is true , create an effect shader in enemy position.
	else
	{
	if not instance_exists(obj_life)
	{
	 state =8;//Ckeck if position is equal = startx. if not, return to position
	} 
	}



}
