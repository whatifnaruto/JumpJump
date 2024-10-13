/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

button_text = "start";

activate_button = function() 
{
	room_goto_next();
	global.game_time = 0;
	global.game_over = false;
}