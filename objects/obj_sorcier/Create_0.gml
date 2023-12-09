/// @description Set initial parameters
// Set the animation speed.
image_speed =1;
// set the start position variable.
start_x = x;
start_y = y;
// Set the state (working in finite state machine for avoid prolblems when you have
// multiple animation and actions).
time_battle = irandom_range(240,360);
state =7;
// set the variable animations
running = spr_sorcier_walk;
attack_anim = spr_sorcier_attack;
life_anim = spr_sorcier_healing ;
idle_anim = spr_sorcier_idle ;
return_anim = spr_sorcier_return ;
// set the first timer for the first attack (first button is the special attack)
special_attack2 = 120;


// set initial animation
sprite_index = running;

