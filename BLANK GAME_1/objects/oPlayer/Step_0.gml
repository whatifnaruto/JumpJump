/// @description Insert description here
// You can write your codein this editor

ysp += gravStr

if keyboard_check(vk_left) // Moving
{
	if (xsp > -moveSpd) xsp -= acc;
    // xsp = -moveSpd
	// sprite_assign(0, player_move)
} else if keyboard_check(vk_right)
{
	if (xsp < moveSpd) xsp += acc;
    //xsp = +moveSpd
	// sprite_assign(0, player_move)
} else // Idling
{
	// sprite_assign(0, player_idle);
	xsp *= gravStr
}

if place_meeting(x, y-1, oSolid)
{
	ysp = gravStr;
}

if place_meeting(x-1, y, oSolid) || place_meeting(x+1, y, oSolid)
{
	ysp *= 0.999;
}

if place_meeting(x, y+1, oSolid)
{
	ysp = 0;

	if keyboard_check(vk_up)
	{
		ysp = -jumpHeight
	}
}

move_and_collide(xsp, ysp, oSolid)

if place_meeting(x,y, oFlag)
{
	if (room_next(room) != -1)
		room_goto_next()
	else room_goto(0)
}

if place_meeting(x,y, oSpike)
{
	room_restart()
}


