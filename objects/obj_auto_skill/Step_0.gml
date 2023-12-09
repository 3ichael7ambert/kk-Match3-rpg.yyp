
if not (destroyed=1)
{
// object go´s to the assigned identification
if point_distance(x,y,xx,yy)>1
{
with(global.auto_container[ident])//using self ident we assign the variable number 
// of the container. if not placed in he´s coord, image_index is set to free(but its not free)

{
image_index=0;
}
//auto skill goes to the container skill block
  x=lerp(x,xx,0.1);
  y=lerp(y,yy,0.1);
  image_xscale= lerp(image_xscale,0.5,0.1);
  image_yscale=image_xscale;

}  
else
//if the distance =1 pixel between block and skill x position and y position are
// the same of container--
{
x=xx;
y=yy;
with(global.auto_container[ident])
{
//change the container image to 1 (yellow) for represent it.
image_index=1;
}
}

// if is travelling in the container direction, maker particles.

if not (y==yy)
{
  switch(piece_type)
{
 case 0 : scr_create_particle(global.pt[8,0],1);break;
 case 1 : scr_create_particle(global.pt[9,0],1);break;
 case 2 :scr_create_particle(global.pt[10,0],1);break;
 case 3 : scr_create_particle(global.pt[11,0],1);break;
 case 4 : scr_create_particle(global.pt[12,0],1);break;
 case 5 : scr_create_particle(global.pt[13,0],1);break;
} 
}
// if autoskill is placed in the first container, call the variable destroyed
if (x==global.auto_container[0].x) and (y==global.auto_container[0].y)
{
//set the type array of container getting the image_index of piece_skill
global.auto_container[0].type = self.piece_type;
 
 destroyed = 1;
}
}
else// if self is destroyed
{
// we scale down the image and executing a call to executo the removing variable of 
//container ( when removing = 1, "obj_auto controller" check the "type array variable "created.
if (obj_sorcier.state==0) or (obj_sorcier.state==8)

{
global.auto_container[0].image_index=2;
image_xscale = lerp (image_xscale,0,0.3);
image_yscale = lerp (image_yscale,0,0.3);
 if (image_xscale <=0)
 {
 global.auto_container[0].removing=1;
 global.auto_container[0].image_index=0;
 instance_destroy();
 } 
}
}

