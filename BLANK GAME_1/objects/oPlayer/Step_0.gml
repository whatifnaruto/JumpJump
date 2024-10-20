/// @description Insert description here

ysp += gravStr
maxSpd = grounded ? moveSpd : airSpd;
if (grounded == false) xsp *= drag;

frameSprite = idle_sprite;

if keyboard_check(vk_left) // Moving
{
	if (xsp > -maxSpd) xsp -= acc;
	if (grounded == true) frameSprite = move_sprite;
} else if keyboard_check(vk_right)
{
	if (xsp < maxSpd) xsp += acc;
	if (grounded == true) frameSprite = move_sprite;
} else // Idling
{
	if (grounded == true) 
	{
		xsp *= 1.0 - slowSpd;
		frameSprite = idle_sprite;
	}
	else 
	{
		frameSprite = jump_sprite;
		xsp *= 1.0 - gravStr;
	}
}

if (grounded == false && ysp > 0) frameSprite = fall_sprite;
sprite_index = frameSprite;

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


