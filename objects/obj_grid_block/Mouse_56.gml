/// @description  If the mouse is currently over the current piece, the piece is highlighted.
if (position_meeting(mouse_x, mouse_y, self))
{
// Sets the image index to the image being highlighted.
image_index = 2;
}
//else if (image_index == 1)
{
// Sets the object back to the first frame, but only if it was previously highlighted.
image_index = 0;
}

