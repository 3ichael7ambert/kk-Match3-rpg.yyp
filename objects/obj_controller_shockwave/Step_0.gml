/// @description Shockwave parameters
tiempo_honda -=1;
shock_enabled = true;
var_mouse_pos_x = x - __view_get( e__VW.XView, 0 );
var_mouse_pos_y = y - __view_get( e__VW.YView, 0 );


if (tiempo_honda <=0)

{
  var_time_var = 0;
  shock_enabled = false;
  instance_destroy();

}


   



