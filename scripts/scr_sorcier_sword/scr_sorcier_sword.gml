/// @description scr_sorcier_sword(enemy,distance_between)
/// @param enemy
/// @param distance_between
function scr_sorcier_sword(argument0, argument1, argument2) {
	/*
	  *argument0 = enemy object.
	  *argument1 = distance between player and enemy object.
	  *argument2 = damage enemy.
	*/
	// runnig in enemy´s direction.
	if instance_exists(argument0)
	{
	if distance_to_object(argument0) > argument1
	{
	if  sprite_index !=running
	{
	    image_index =0;
	    sprite_index = (running);
	}
	hspeed=12;
	x=lerp(x-hspeed,argument0.x,0.04);
	}
	else
	{
	hspeed =0;
	// if place_meeting enemy object, set the attack animation.
	if  sprite_index!=attack_anim
	{
	image_index =0;
	sprite_index=(attack_anim);

	}
	// if attack animation is true , create an effect shader in enemy position.
	else
	{
	if (image_index = 14)
	{
	  if not instance_exists(obj_controller_shockwave)
	  {instance_create(argument0.x,argument0.y,obj_controller_shockwave);}
	  with(argument0)
	  {
	   life-=argument2;
	  } 
  
	}
	else if (image_index >=30)
	{
	state=8; //Ckeck if position is equal = startx. if not, return to position.
	}
	}
	}
	}
	else
	{
	state =8;//Ckeck if position is equal = startx. if not, return to position.
	}



}
