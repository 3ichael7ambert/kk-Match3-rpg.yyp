
/*if (os_type == os_windows)
{
/// Sets the column and row of the grid piece currently being highlighted by the mouse.
global.grid_manager.current_mouse_col = col;
global.grid_manager.current_mouse_row = row;
// Sets the keyboard column and row information.
with (global.grid_manager)
{
if (current_key_col >= 0 && current_key_row >= 0)
{
array_grid[current_key_col, current_key_row].image_index = 0;
}
current_key_col = -1;
current_key_row = -1;
}
// Sets the frame to the block's highlight state.
image_index = 1;
}




/* */
/*  */
