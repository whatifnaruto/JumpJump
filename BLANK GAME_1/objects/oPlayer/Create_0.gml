/// @description Insert description here
// You can write your code in this editor
window_set_size(1280, 720); 
xsp = 0;
ysp = 0;

jumpHeight = 3;
moveSpd = 2;
airSpd = 3;
gravStr = 0.1;
drag = 0.999;
slowSpd = 0.13;
acc = 0.1;

grounded = false;

move_sprite = player_move;
idle_sprite = player_idle;
fall_sprite = player_fall;
jump_sprite = player_fall;