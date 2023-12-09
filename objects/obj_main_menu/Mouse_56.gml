/// @description  Checks each button. If the button was down, the menu press script is executed.
for (var i = 0; i < 10; i++)
{
if (button_down[i] && ((i div 2) == current_btn_row))
{
scr_on_menu_button_pressed(i);
}
// Sets all buttons to being down to false.
button_down[i] = false;
}

