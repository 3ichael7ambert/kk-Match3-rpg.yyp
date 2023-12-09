draw_set_color(c_white);
surf =0;
uni_time = shader_get_uniform(shd_mosaic,"time");
var_time_var = 0;

uni_mouse_pos = shader_get_uniform(shd_mosaic,"mouse_pos");
var_mouse_pos_x = mouse_x - __view_get( e__VW.XView, 0 );
var_mouse_pos_y = mouse_y - __view_get( e__VW.YView, 0 );

uni_resolution = shader_get_uniform(shd_mosaic,"resolution");
var_resolution_x = __view_get( e__VW.WView, 0 );
var_resolution_y = __view_get( e__VW.HView, 0 );

uni_pixel_amount = shader_get_uniform(shd_mosaic, "pixel_amount");
var_pixel_amount = 1;

shader_enabled = true;
full_screen_effect = true;
if !view_enabled
    {
    __view_set( e__VW.Visible, 0, true );
    view_enabled = true;
    }

 
    
 



