/// @description 
///
function scr_sorcier_arrow() {

	if  sprite_index!=attack_anim
	{
	image_index =0;
	sprite_index=(attack_anim);
	}

	else
	{
	if image_index >=12
	{
	 instance_create(x+80,y-100,obj_arrow);
	 state=8;//Ckeck if position is equal = startx. if not, return to position
	}
	}



}
