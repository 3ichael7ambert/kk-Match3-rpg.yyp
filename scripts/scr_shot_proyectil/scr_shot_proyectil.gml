/// @description scr_shot_proyectil(object to shot , speed)
/// @param object to shot 
/// @param  speed
function scr_shot_proyectil(argument0, argument1) {
	//argument0 = enemy object.
	//argument1 = proyectil speed.
	if instance_exists(argument0)
	{
	move_towards_point(argument0.x,argument0.y,argument1);
	}
	else
	{
	instance_destroy();
	}



}
