/// @description scr_sorcier_attack2(enemy_object,ene_distance_between,damage)
/// @param enemy_object
/// @param ene_distance_between
/// @param damage
function scr_sorcier_attack2(argument0, argument1, argument2) {
	// runnig in enemy´s direction.
	/*
	  *argument0 = enemy object.
	  *argument1 = distance between player and enemy object.
	  *argument2 = damage enemy.
	*/
	if instance_exists(argument0)
	{
	if distance_to_object(argument0) > argument1
	{

	if  sprite_index!=running
	{
	sprite_index =running;
	}
	// Run in the enemy direction
	hspeed=12;
	// Assing a smooth transition
	x=lerp(x-hspeed,argument0.x,0.04);
	}
	else
	{
	// Stop in front the enemy
	hspeed =0;
	// if place_meeting enemy object, set the attack animation
	if  sprite_index!=attack_anim
	{
	image_index =0;
	sprite_index=(attack_anim);
	}
	// if attack animation is true , create an effect shader in enemy position.
	else
	{
	 // special attack variable is a timer to smash 4 times the enemy
	 special_attack2-=1;
	if (image_index = 14)
	{
	  if not instance_exists(obj_controller_shockwave)
	  {instance_create(argument0.x,argument0.y,obj_controller_shockwave);}
	  with(argument0)
	  {
	   life-=argument2;
	  } 
	}

	if  (special_attack2<=0)
	{
	special_attack2 =0;
	state=8; //Ckeck if position is equal = startx. if not, return to position.

	}

	}
	}
	}
	else
	{
	state =8;//Ckeck if position is equal = startx. if not, return to position
	}



}
