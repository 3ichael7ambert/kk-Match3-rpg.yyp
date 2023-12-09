/// @description Destroys all particle types managed by this object.
// Destroys each particle type first.
var i;
for (i = 0; i < part_count; i++)
{
part_type_destroy(global.pt[i, 0]);
global.pt[i, 0] = noone;
}
// Destroys the particle system.
part_system_destroy(ps);
ps = noone;
// Removes the reference of this object from the global variable.
global.ps_manager = noone;

