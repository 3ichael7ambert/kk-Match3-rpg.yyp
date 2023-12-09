/// @description 
function scr_sorcier_magic() {

	if  sprite_index != attack_anim
	{
	 image_index =0;
	 sprite_index = attack_anim;
	}
	// if attack animation is true , create an effect shader in enemy position.
	else
	{
	    if image_index >=12
	    {
	      instance_create(x+80,y-100,obj_magic);
	      state=8;//Ckeck if position is equal = startx. if not, return to position
	    }
	}



}
