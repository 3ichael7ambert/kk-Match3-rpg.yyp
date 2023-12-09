/// @description Draw the containers values
for (i=0;i<6;i++)
{
draw_text(global.array_skill[i].x+20,global.array_skill[i].y-20,string_hash_to_newline(string(global.array_skill[i].container)));
}

