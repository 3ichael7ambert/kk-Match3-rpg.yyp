/// @description scr_create_particle(part_index,number of particles)
/// @param part_index
/// @param number of particles
function scr_create_particle(argument0, argument1) {

	//Call the script with 2 arguments assigning the particle type and how many 
	// particles are emmitted ( we are previously set the particle type in the object (obj_particle_system))

	//argument0 = particle type;
	//argument1 = the number of particle emitted;


	// Emits particles from the position x and y.
	var burst_x, burst_y;
	burst_x = x;
	burst_y = y;
 

	with (global.ps_manager)
	{
	part_particles_create(ps, burst_x, burst_y,
	 argument0, argument1);

	}



}
