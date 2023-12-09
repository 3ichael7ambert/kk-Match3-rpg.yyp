
// See the "auto skill for a better documentation
if point_distance(x,y,xx,yy)>1
{
  x=lerp(x,xx,0.1);
  y=lerp(y,yy,0.1);
  image_xscale= lerp(image_xscale,0.1,0.05);
    image_yscale=image_xscale;
  image_alpha= lerp(image_alpha,0.1,0.05);

}  
else
{
x=xx;
y=yy;
} 

if (x==xx) and (y==yy)
{
// Assigning the skill type for the container with self image index
global.array_skill[piece_type].container +=1;
instance_destroy();
}
else
{
switch(piece_type)
{
 case 0 : scr_create_particle(global.pt[8,0],2);break;
 case 1 : scr_create_particle(global.pt[9,0],2);break;
 case 2 :scr_create_particle(global.pt[10,0],2);break;
 case 3 : scr_create_particle(global.pt[11,0],2);break;
 case 4 : scr_create_particle(global.pt[12,0],2);break;
 case 5 : scr_create_particle(global.pt[13,0],2);break;
} 
}

