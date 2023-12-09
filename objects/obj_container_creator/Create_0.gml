/// @description  create the array containers
/* We create 12 auto skills container, a variable to represent its free or not
 a variable to represent if the container is removing and executing the skill
 and a variable to identify the skill type.*/
var i;
for (i=0;i<12;i++)
{
global.auto_container[i] = instance_create(x+36*i,y,obj_auto_container);
global.auto_container[i].free =true;
global.auto_container[i].removing=0;
global.auto_container[i].type = -1;
}
// We create a controller object to manage the skill´s containers.
instance_create(x,y,obj_auto_controller);
instance_destroy();

/* */
/*  */
