/// @description Insert description here
// You can write your codein this editor

ysp += gravStr
maxSpd = grounded ? moveSpd : airSpd;
if (grounded == false) xsp *= drag;


if keyboard_check(vk_left) // Moving
{
	if (xsp > -maxSpd) xsp -= acc;
    // xsp = -moveSpd
	// sprite_assign(0, player_move)
} else if keyboard_check(vk_right)
{
	if (xsp < maxSpd) xsp += acc;
    //xsp = +moveSpd
	// sprite_assign(0, player_move)
} else // Idling
{
	// sprite_assign(0, player_idle);
	if (grounded == true) xsp *= 1.0 - slowSpd;
	else xsp *= 1.0 - gravStr;
}

if place_meeting(x, y-1, oSolid)
{
	if (ysp < 0) ysp = gravStr;
}

if place_meeting(x-1, y, oSolid) || place_meeting(x+1, y, oSolid)
{
	ysp *= 0.999;
}

if place_meeting(x, y+1, oSolid)
{
	ysp = 0;
	grounded = true;

	if keyboard_check(vk_up)
	{
		ysp = -jumpHeight
		grounded = false;
	}
}

move_and_collide(xsp, ysp, oSolid)

if place_meeting(x,y, oFlag)
{
	if (room_next(room) != -1)
		room_goto_next()
	else // If there is not a next room, the game is over
	{
		global.game_over = true;
		room_goto(0) // return to main menu
	}
}

if place_meeting(x,y, oSpike)
{
	room_restart()
}


