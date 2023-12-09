/// @description  Perform the buttons parameters
var i;
var mx, my,mouse_press,xpos;// assigning  variables to interact with buttons
mx = mouse_x; 
my = mouse_y;
mouse_press = mouse_check_button_pressed(mb_left);
for (i=0;i<6;i++)
{
// if sorcier state are 7 and is running, container are lockeds..

// if points container < of minimum requiered and you can´t access it, image blend to gray.
if (global.array_skill[i].container < global.array_skill[i].min_container) or (obj_sorcier.state=7)
{
 global.array_skill[i].locked=1;
}
else
{
global.array_skill[i].locked =0;
}
// if the container is locked change the color container ( a darker color representing the not posibility to use)
if not (global.array_skill[i].locked=1)
{
 global.array_skill[i].image_blend = c_white;
}
else
{
 global.array_skill[i].image_blend = c_gray;
}  
// Touching the containers
xpos = position_meeting(mx,my,global.array_skill[i]); 
if (xpos) && (mouse_press) and not (global.array_skill[i].locked=1)
{
switch(i)
{/// Press mouse button in the first coordinate. if you have a minimum of 12 points...
 case 0:
 with(obj_sorcier)
  {
   state = 1;// command the sorcier for attack 
  };global.array_skill[i].container -=12; break; //Decrease container points if not < 12;                    
 case 1:/// Press mouse button in the second coordinate.
 with(obj_sorcier)
   {
   state = 2;
   };global.array_skill[i].container -=6;break;
 case 2:/// Press mouse button in the third coordinate.
  with(obj_sorcier)
  {
  state = 3;
  } global.array_skill[i].container -=6;break;
  case 3:/// Press mouse button in the fourth coordinate.
 with(obj_sorcier)
  {
  state = 4;
  } global.array_skill[i].container -=6;break;
 
 case 4:/// Press mouse button in the fifth coordinate.
 with(obj_sorcier)
  {
  state = 5;
  } global.array_skill[i].container -=6;break;
   
 case 5:/// Press mouse button in the sixth coordinate.
with(obj_sorcier)
{
 state = 6;
}global.array_skill[i].container -=6;break;
}
}  
}
//prevent artefacts when the game time is finished.
with (obj_grid_manager)
{
if alarm[1] ==-1
{
scr_end_manual();
}
}






