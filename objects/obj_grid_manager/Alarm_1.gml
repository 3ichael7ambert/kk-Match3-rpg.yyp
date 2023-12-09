/// @description  Ends the game.
// Sets this value to true so pieces cannot be shifted.
shifting_pieces = true;
with(obj_particle_manager)
{
instance_destroy();
} 

// Iterates through each piece.
for (var i = 0; i < columns; i++)
{
for (var j = 0; j < rows; j++)
{
// Hides the grid.
array_grid[i,j].visible = false;
// Destroy all outside pieces. 
with (array_pieces[i, j])
{
// Sets a random speed and gravity to give the illusion of popping off the board.

gravity += random_range(0.5,1);
array_piece[i,j]=noone;
// Both alarms are set to 0 to prevent any movement that might have been occurring when this alarm was triggered.
alarm[0] = -1;
alarm[1] = -1;
}
image_xscale = lerp(image_xscale,0,0.1);
}
}
// Sets the string for the game over value.
game_over_info[2] = "TIME OVER!##FINAL SCORE#" + string(score);

// Sets the alarm to five seconds.
alarm[2] = room_speed * 5;

