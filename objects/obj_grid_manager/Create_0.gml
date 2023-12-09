/// @description  Creates the grid and the pieces on the board, storing them into arrays.
// Ensures random functions produce unique results with each play.
randomize();
global.index =0;


// Defines the number of columns in the grid.
columns = global.columns;
// Defines the number of rows in the grid.
rows = global.rows;
// The number of pieces that will be present on the board Should
// be greater than 1.
piece_range = global.piece_range;
// Set the horizontal and vertical spacing based on the size of
// the grid block.
x_spacing = sprite_get_width(spr_grid);
y_spacing = sprite_get_height(spr_grid);
// Uses the original placement to determine the desired distance from all sides.
var x_margin = x;
var y_margin = y;
// Determines the width and height of the board. (Columns ,Rows) 
var width = x_spacing * columns;
var height = y_spacing * rows;
// Gets the width of the room using the predefined margins.
var room_width_margin = room_width - x_margin*2 ;
var room_height_margin = room_height - y_margin ;// *2 if you want landscape.
// If either size exceeds the size of the room, the scale must be adjusted.
if (width > room_width_margin || height > room_height_margin)
{
image_xscale = room_width_margin / width;
image_yscale = room_height_margin / height;
// Sets the scale to the smallest value in equal proportions.
image_xscale = min(image_xscale, image_yscale);
image_yscale = min(image_xscale, image_yscale);
}
// Multiplies the spacing by the updated scale.
x_spacing *= image_xscale;
y_spacing *= image_yscale;
// The board is moved to fit the new sizing;
width *= image_yscale;
height *= image_xscale;
// The board is moved so pieces are placed at the right starting bpoint.
x = x_margin + (room_width_margin - width + x_spacing) * 0.5;
y = y_margin + (room_height_margin - height + y_spacing) * 0.5;

// Resets the current score to 0.
score = 0;
// Combo counter used to exponentially increase the score for consecutive matches.
combo_count = 0;
// Defines information for the score.
score_info[0] = 16 ;   //x position
score_info[1] = 0;  //y position
score_info[2] = "Score:0000000000";
// Define variables for loops.
var i, j;
// Loop through the columns and rows, creating the grid and puzzle pieces, now using the scale.
for (i = 0; i < columns; i++)
{
for (j = 0; j < rows; j++)
{
array_grid[i, j] = scr_create_in_grid(x, y, x_spacing, y_spacing, 1, obj_grid_block, i, j, image_xscale);
array_pieces[i, j] = scr_create_in_grid(x, y, x_spacing, y_spacing, 0, obj_puzzle_piece, i, j, image_xscale);
array_pieces[i, j].image_index = irandom(piece_range);
}
}


// Recursively checks the board to prevent matches of three on
// start.
scr_check_board(false);
/// Initializes variables for the state of an alarm-based break.
// Indicates that pieces are being shifted.
is_shifting_pieces = false;
// Creating the combat system mode
if not (global.auto_combat =1)
{
 instance_create(164,215,obj_skills_creator);
}
else
{
instance_create(72,215,obj_container_creator);
}

// The total time in the level.
alarm[1] = global.start_time * room_speed * 60;
// Information for the timer, which will be displayed as a rectangle that transitions through three colors.
// dawing timer info (0= left,1= up, 2 = right, 3= down).
timer_info[0] = 512;
timer_info[1] = 420;
timer_info[2] = 532;
timer_info[3] = 628;



timer_percentage = 100.0 / alarm[1];
timer_width = timer_info[2];
// Game over variables
game_over_info[0] = room_width * 0.5;
game_over_info[1] = room_height * 0.5;
game_over_info[2] = "TIME OVER!##FINAL SCORE#0";

/// Initializes mouse  input specific variables.
// A reference to the grid manager.
global.grid_manager = id;
// The current column and row highlighted on the board by mouse.
current_mouse_col = -1;
current_mouse_row = -1;
// The current piece highlighted on the board by keyboard.
current_key_col = -1;
current_key_row = -1;

