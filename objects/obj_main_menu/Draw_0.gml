/// @description  Draws all of the GUI for the main menu.
// Sets the font and alignment for the title.
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
// Draws the title.
draw_text(title_info[0], title_info[1], string_hash_to_newline(title_info[2]));
// Sets the font for the main text.
draw_set_font(fnt_main);
// Draws the heading and other parameter texts.
draw_text(heading_info[0], heading_info[1], string_hash_to_newline(heading_info[2]));
draw_text(column_info[0], column_info[1], string_hash_to_newline(column_info[2]));
draw_text(row_info[0], row_info[1], string_hash_to_newline(row_info[2]));
draw_text(time_info[0], time_info[1], string_hash_to_newline(time_info[2]));
draw_text(piece_info[0], piece_info[1], string_hash_to_newline(piece_info[2]));

// Draws the sprites that will show up in the level.
for (var i = 0; i <= global.piece_range; i++)
{
draw_sprite(spr_pieces, i, piece_pos_x_mid + piece_width * i,
piece_pos_y);
}
// Draws the small buttons.
for (i = 0; i < 8; i++)
{
// Gets which row the button is in.
var button_row = i div 2;
// If the button is in the current row, it is colored yellow;// The button is drawn.
if (current_btn_row == button_row)
{
draw_sprite_ext(spr_small_button,0,button_x[i, 0],button_y[i, 0],image_xscale,image_yscale,image_angle,c_yellow,1);
}
else
{
draw_sprite_ext(spr_small_button,0,button_x[i, 0],button_y[i, 0],image_xscale,image_yscale,image_angle,c_white,1);
}
// The color is set to black for the text.
draw_set_color(c_white);
// Draws the centered text at the mid point of the button.
draw_text(button_x[i, 0], button_y[i, 0], string_hash_to_newline(button_text[i]));
// Create a wiggle efect
image_xscale=image_xscale + 0.0005 *sin(zoom_button);
image_yscale = image_xscale;
zoom_button+=0.05;
}
// Draws the big buttons.
for (var i = 8; i < 10; i++)
{
// Gets which row the button is in.
var button_row = i div 2;
// If the button is in the current row, it is colored yellow;// The button is drawn.
if (current_btn_row == button_row)
{
draw_sprite_ext(spr_button,0,button_x[i, 1],button_y[i, 1],image_xscale,image_yscale,image_angle,c_yellow,1);
}
else
{
draw_sprite_ext(spr_button,0,button_x[i, 1],button_y[i, 1],image_xscale,image_yscale,image_angle,c_white,1);
}
// The color is set to black for the text.
draw_set_color(c_white);
// Draws the centered text at the mid point of the button.
draw_text(button_x[i, 0], button_y[i, 0], string_hash_to_newline(button_text[i]));
// Create a wiggle efect
image_xscale=image_xscale + 0.0005 *sin(zoom_button);
image_yscale = image_xscale;
zoom_button+=0.05;
}

