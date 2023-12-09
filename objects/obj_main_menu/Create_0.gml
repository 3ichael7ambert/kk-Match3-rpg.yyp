/// @description  Initializes various instanced and global variables for the main menu.
// The number of columns the game will use, ranging from 6 to 20.
global.columns = 7;
column_min = 6;
column_max = 12;
// The number of rows the game will use, ranging from 6 to 12
global.rows = 10;
row_min = 6;
row_max = 20;
// The number of piece types that can be used in the game ranging from 2 to 5.
global.piece_range = 3;
piece_min = 2;
piece_max = 5;
// The amount of time the player has to get the best score possible in minutes.
global.start_time = 3;
start_time_min = 1;
start_time_max = 10;
//Choose between normal mode or auto-combat mode.
global.auto_combat =0;
/// Initializes draw event information.
// Placement and text for the title.
title_info[0] = room_width * 0.5;
title_info[1] = room_height * 0.1;
title_info[2] = "MATCH-3 RPG";
// Placement and text for the main heading.
heading_info[0] = title_info[0];
heading_info[1] = room_height * 0.3;
heading_info[2] = "Game Options";
// Column Info.
column_info[0] = title_info[0];
column_info[1] = room_height * 0.4;
column_info[2] = "Columns: " + string(global.columns);
// Row Info.
row_info[0] = title_info[0];
row_info[1] = room_height * 0.45;
row_info[2] = "Rows: " + string(global.rows);
// Start time draw info.
time_info[0] = title_info[0];
time_info[1] = room_height * 0.5;
time_info[2] = "Time: " + string(global.start_time) + " Minutes";
// Placement and text for the piece info.
piece_info[0] = title_info[0];
piece_info[1] = room_height * 0.55;
piece_info[2] = "Pieces";
// Parameters for displaying the pieces that will be in the level.
piece_width = sprite_get_width(spr_pieces);
piece_width_mid = global.piece_range * piece_width * 0.5;
piece_pos_x_mid = title_info[0] - piece_width_mid;
piece_pos_y = room_height * 0.7;
/// Initializes the draw button info.
// String displayed on GUI buttons to increment a value.
inc_string = "+";
// String displayed on GUI buttons to decrement a value.
dec_string = "-";
// Defines the half sizes of the small buttons.
var button_sm_width = 38;
var button_sm_height = 18;
// Defines the half sizes of the large buttons.
var button_lg_width = 92;
var button_lg_height = 43;
// Defines the middle x and y coordinates of the 8 buttons.
button_pos_mid[0] = room_width * 0.30;
button_pos_mid[1] = room_width * 0.70;
// Uses a for loop to define the button information.
for (var i = 0; i < 8; i++)
{
// mod is used to determine if the button is on the left (0) or on the right (1).
var i_mod = i mod 2;
button_x[i, 0] = button_pos_mid[i_mod];
// The width for the small button are subtracted and added from the x coordinate of the center.
button_x[i, 1] = button_x[i, 0] - button_sm_width;
button_x[i, 2] = button_x[i, 0] + button_sm_width;
// div is used to move each pair of buttons onto a new row.
button_y[i, 0] = room_height * (0.4 + 0.05 * (i div 2));
// The height for the small button are subtracted and added from the y coordinate of the center
button_y[i, 1] = button_y[i, 0] - button_sm_height;
button_y[i, 2] = button_y[i, 0] + button_sm_height;
// A variable used to determine if the button is currently down or not.
button_down[i] = false;
// If on the left, the text is set to the minus sign, the plus sign is used.
if (i_mod == 0)
{
button_text[i] = dec_string;
}
else
{
button_text[i] = inc_string;
}
}
// Defines parameters for the play button using the large button width and height.
button_x[8, 0] = room_width * 0.3;
button_x[8, 1] = button_x[8, 0] - button_lg_width;
button_x[8, 2] = button_x[8, 0] + button_lg_width;
button_y[8, 0] = room_height * 0.85;
button_y[8, 1] = button_y[8, 0] - button_lg_height;
button_y[8, 2] = button_y[8, 0] + button_lg_height;
button_down[8] = false;
button_text[8] = "Manual-Combat!";
button_x[9, 0] = room_width * 0.7;
button_x[9, 1] = button_x[9, 0] - button_lg_width;
button_x[9, 2] = button_x[9, 0] + button_lg_width;
button_y[9, 0] = room_height * 0.85;
button_y[9, 1] = button_y[9, 0] - button_lg_height;
button_y[9, 2] = button_y[9, 0] + button_lg_height;
button_down[9] = false;
button_text[9] = "Auto-Combat!";
// zoom effect for buttons, in draw_envent we use this variable.
zoom_button=0;
// Used for keyboard input, highlighting which row of buttons is being pressed.
current_btn_row = noone;

