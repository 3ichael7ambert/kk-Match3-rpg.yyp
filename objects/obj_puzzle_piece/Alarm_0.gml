/// @description  Moves puzzle piece towards goal smoothly.
// Linear interpolation of the x coordinate.
x = lerp(x, x_goal, 0.2);
// Linear interpolation of the y coordinate.
y = lerp(y, y_goal, 0.2);
// If the x or y are more than 1 unit away from the goal, the alarm
// is set to run again next frame.
if (abs(x - x_goal) >= 1 || abs(y - y_goal) >= 1)
{
alarm[0] = 1;
}
else
{
x = x_goal;
y = y_goal;
}

