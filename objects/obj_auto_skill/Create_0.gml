
image_speed=0;
image_index = piece_skill;//This is the globalvar created when we match a piece
piece_type = image_index;//Assignin the globalvar value to know what skill represents.
xx=0;//This variable is created to asign the x position of container and link Skill-container.
yy=0;
destroyed =0;// Variable destroyed...see later...
// create a particle profiting we know the image skill index .
  scr_create_particle(global.pt[piece_type,0],global.pt[piece_type,1]);
// if not free available containers the self instance is destroyed(you can add special points for this instances)
if not (global.auto_container[11].free=false)
{
var i;
// We make a loop to check the free containers, if its true, we break the loop
// asiggning he´s proper identification..
for (i=0;i<12;i++)
{
if (global.auto_container[i].free=true)
{
xx = global.auto_container[i].x;
yy = global.auto_container[i].y;
global.auto_container[i].free=false;
ident =i;break;
}
}
}
// if no place free for the skill
else
{
instance_destroy();
}




