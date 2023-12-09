/// @description  Create the skills button

var i;
for (i=0;i<6;i++)
  { // Creating 6 buttons for the player´s skills, you can create whatever number of button you desire
  // in this case we make six, obliviously because we have six diferent pieces to match.
    global.array_skill[i]=instance_create (x+64*i,y, obj_skill_container);
    //global.array_skill[i]=instance_create (x,y+64*i, obj_skill); if you desire a vertical button position
    global.array_skill[i].image_index = i;
    global.array_skill[i].locked=0;// Prevent touch the button in transitions
    global.array_skill[i].container =0; // variable to manage the diferents skills.
    global.array_skill[i].min_container =0;//the minimum points we need to execute an attack.
    
  }
  // Creating a controller to manage the skills and execute the player states..
  instance_create(x,y,obj_container_controller);
  instance_destroy();


