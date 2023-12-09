/*var burst_x, burst_y, index; // this is the old Metod
burst_x = x;
burst_y = y;


with (global.ps_manager)
{
part_particles_create(ps, burst_x, burst_y,
pt[6,0], pt[6,1]);


}*/
scr_create_particle(global.pt[6,0],global.pt[6,1]); // This is the new method to call particles (easier and fast)

if place_meeting (x,y,obj_sorcier)
{
if not instance_exists(obj_controller_shockwave)
  {instance_create(x,y,obj_controller_shockwave);}
 instance_destroy();
} 

/* */
/*  */
