/// @description  Controlling the states



switch (state)
{
// idle state in start position.
case 0 : scr_sorcier_idle();break;
// extecute skills_buttons
/* Special attack,(choose the arguments) argument1 is the enemy object, 
argument 2 is the distance_between objects in pixels
argument 3 is the damage maded*/
case 1 : scr_sorcier_attack2(obj_fenix,50,10);break;
case 2 : scr_sorcier_magic();break;
case 3 : scr_sorcier_life();break;
case 4 : scr_sorcier_arrow();break;
case 5 : scr_sorcier_gun(); break;
//the same of the case 1, but with a slighter attack 
case 6 : scr_sorcier_sword(obj_fenix,50,10);break;
case 7 : scr_sorcier_run();break;// if not enemys exists return to position.
case 8 : scr_sorcier_return();break;
case 9 : scr_sorcier_auto_special();break
}

// begin run to the next battle
if not(instance_exists(obj_fenix))
{

state= 7;
}


/* */
/*  */
