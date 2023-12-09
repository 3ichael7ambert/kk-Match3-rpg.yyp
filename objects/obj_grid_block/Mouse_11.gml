/// @description swapping pieces
/* If the grid block is currently being highlighted, the pieces are
swapped based on the direction the mouse is moved.*/


if (image_index == 2 && !global.grid_manager.is_shifting_pieces)
{
// Determine which way the blocks were swapped.
var x_direction, y_direction;
x_direction = mouse_x -x;
y_direction = mouse_y -y;
// Swap the pieces.
scr_swap_pieces(col, row, x_direction, y_direction, false, 0);
}
// The image_index is set back to 0.
image_index = 0;



/* */
/*  */
