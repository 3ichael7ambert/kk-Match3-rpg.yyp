/// @description  Resets any highlighting performed by the mouse.
current_btn_row = -1;
// Test to see which button the mouse is in range of.
for (var i = 0; i < 10; i++)
{
// Determines if mouse_x and mouse_y are within the x and y coordinates of the button.
button_down[i] = (mouse_x > button_x[i, 1] && mouse_x <
button_x[i, 2] && mouse_y > button_y[i, 1] && mouse_y <
button_y[i, 2]);
// If the button is down, that row is set to highlight.
if (button_down[i])
{
current_btn_row = i div 2;
}
}

