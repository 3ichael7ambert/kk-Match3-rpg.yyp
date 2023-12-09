// Controlling state
switch (state)
{
// execute the attack state.
case 0 : scr_fenix_idle();break;
// execute idle state.
case 1 : scr_fenix_attack();break;
}

if (life<=0) and (obj_sorcier.state==8 or obj_sorcier.state==0)
{
 scr_create_particle(global.pt[17,0],global.pt[17,1]);
 instance_destroy();
} 










