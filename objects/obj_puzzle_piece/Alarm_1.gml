/// @description  Moves the puzzle piece towards the y goal using gravity.
gravity = 1;
/* If the current position plus the speed is greater than the goal,
* the piece is stopped; otherwise, the alarm is reset. */
if (y + speed >= y_goal)
{
y = y_goal;
speed = 0;
gravity = 0;
}
else
{
alarm[1] = 1;
}

/* */
/*  */
