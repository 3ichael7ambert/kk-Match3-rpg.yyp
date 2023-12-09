/// @description  Draw's the board's UI.
/// Sets the font and alignment
draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
// Draws the score on the left of the screen.
draw_text(score_info[0], score_info[1], string_hash_to_newline(score_info[2]));

// Determines the percentage of the timer while making sure it doesn't fall below 0.
var percent = max(0, alarm[1] * timer_percentage);
// Draws the custom timer and sets the color.

draw_healthbar (timer_info[0], timer_info[1], timer_info[2], timer_info[3], percent, c_black, c_red, c_green, 3, true, false);
draw_sprite(spr_timebar,0,506, 392)
// If the percent is less than or equal to 0, meaning the round is over, game over text is written.
if (percent == 0)
{
draw_set_font(fnt_title);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(game_over_info[0], game_over_info[1],string_hash_to_newline(game_over_info[2]));
}


