/// @description Control the containers blocks

//the variable removing are called from the autoskill object,
//when the autoskill are placed in the firt container skill.
if global.auto_container[0].removing = 1
{
// Container 0 controls the state´s sorcier depending of thepiece skill´s image index.("type array variable")
  with(obj_sorcier)
  {
 if (state ==0) or (state==8)
   { 
    switch(global.auto_container[0].type)
    {
      case 0: state=1;break;
      case 1: state=2;break;
      case 2: state=3;break;
      case 3: state=4;break;
      case 4: state=5;break;
      case 5: state=6;break;
    }
// When removing is equal 0,container block control state is blocked and free to recieve another autoskill..          
    global.auto_container[0].removing = 0;
    //freeing the container
    global.auto_container[0].free=true;
    
}
}
}
/*  This block of code determine if the autoskill detect a place free on he´s left..
 the array number of the first container are 0 so, we maker a loop beginning in 1,
 and we check if the left container (-1) is free, if is afirmatife, ident is changed to reorganize
 the autoskill position.*/
 with(obj_auto_skill)
    {
     for(var i=1;i<12;i++)
     {
      if global.auto_container[i-1].free=true and  self.xx=global.auto_container[i].x
      {
     self.xx=global.auto_container[i-1].x;
     self.yy=global.auto_container[i-1].y;
     global.auto_container[i-1].free=false;
      global.auto_container[i].free=true;
      global.auto_container[i].image_index=0;
      ident -=1;
      break;
      }
     }
    }
    
// Creating a special attack    
// if the container is identified from the autoskill object    
if (global.auto_container[11].free =false)
{
// if not new puzzles pieces its creating and not combo making
if (obj_grid_manager.combo_count =0)
{
//deactivating the grid block and pieces to prevent artefacts moves..
instance_deactivate_object(obj_grid_block);
instance_deactivate_object(obj_puzzle_piece);   
// calling the special
if not (global.auto_container[0].removing=1)
{
special = 1;
}
}

}
// Creating the special attack...
if (special=1)
{
//Change to green the block container to make the sensation of "something good it happend"...
for(var i =0;i<12;i++)
{
 global.auto_container[i].image_index = 2;
}
//Execute the special attack script
scr_sorcier_auto_special();
}

// if game time is finish, execute the end script game to prevent visuals artefacts.
with (obj_grid_manager)
{
if alarm[1] ==-1
{
scr_end_auto();
}
}

/* */
/*  */
