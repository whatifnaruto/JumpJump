/// @description Insert description here
// You can write your code in this editor

if (global.game_over == true)
{
	draw_self();
	
	if (global.game_time == 0)
	{
		draw_set_font(fnt_button);
		draw_set_color(c_white);
		draw_text(x, y, "JumpJumpJump!");		
	}
	else
	{
		draw_set_font(fnt_exit);
		draw_set_color(c_white);
		game_completion_time_seconds = floor(global.game_time);
		game_completion_time_minutes = floor(game_completion_time_seconds / 60);
		game_completion_time_seconds = game_completion_time_seconds mod 60;

		draw_text(x, y, "You completed the game in: " + string(game_completion_time_minutes) + " minute and " + string(game_completion_time_seconds) + " seconds!");	
	}
}