/// @description 
function scr_proyectil_impact(argument0, argument1) {
	 //argument0 = enemy object.
	 //argument1 = enemy life.
	if place_meeting (x,y,argument0)
	{
	if not instance_exists(obj_controller_shockwave)
	{instance_create(x,y,obj_controller_shockwave);}
	with(argument0)
	  {
	   life-=argument1;
	  } 
	instance_destroy();
	} 



}
