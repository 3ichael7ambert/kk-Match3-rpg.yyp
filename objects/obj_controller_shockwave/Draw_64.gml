/// @description Fullscreen draw
if shaders_are_supported()
{
var w = display_get_gui_width();
var h = display_get_gui_height();


if shader_enabled and shock_enabled 
    {
        shader_set(shd_shockwave);
        var_time_var+=var_speed;
    }
    shader_set_uniform_f(uni_time, var_time_var);
    shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
    shader_set_uniform_f(uni_shock_amplitude, var_shock_amplitude);
    shader_set_uniform_f(uni_shock_refraction, var_shock_refraction );
    shader_set_uniform_f(uni_shock_width, var_shock_width);
 
    if !surface_exists(surf)
    {
    surf = surface_create(w, h);
    
__view_set( e__VW.SurfaceID, 0, surf );
    }
 else
    {
    
    if full_screen_effect draw_surface(surf,0,0);
       
    }
 draw_set_blend_mode(bm_normal)
shader_reset();
}
else
{
instance_destroy();
}


