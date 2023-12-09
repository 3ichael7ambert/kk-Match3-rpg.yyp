var w = display_get_gui_width();
var h = display_get_gui_height();

var_time_var+=0.04;

var_mouse_pos_x = mouse_x - __view_get( e__VW.XView, 0 );
var_mouse_pos_y = mouse_y - __view_get( e__VW.YView, 0 );

if shader_enabled shader_set(shd_mosaic);
    shader_set_uniform_f(uni_time, var_time_var);
    shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
    shader_set_uniform_f(uni_pixel_amount, var_pixel_amount);
    
    
  if not surface_exists(surf)
    {
    surf = surface_create(w, h);
    __view_set( e__VW.SurfaceID, 0, surf );
    
    }
    else
    {
     if full_screen_effect draw_surface(surf,0,0);
    }
shader_reset();
/*
draw_text(0,0,"Real FPS: "+string(fps_real));
draw_text(0,12,"Pixel amount (Q & A to adjust): "+string(var_pixel_amount));


draw_text(0,60,"Spacebar to toggle shader");
draw_text(0,72,"Shift key to toggle fullscreen or sprite only");
draw_text(0,84,"Escape key to exit");*/


/* */
/*  */
