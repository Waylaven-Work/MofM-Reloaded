/// @description Move State
image_speed = .6;
if (alarm[0] <= 0)
{
	apply_friction_to_movement_entity();
}
else
{
	add_movement_maxspeed(direction_, 0.05, .5);	
}

move_movement_entity(true);

if (speed_ = 0)
{
	alarm[0] = random_range(1, 3) * game_get_speed(gamespeed_fps);
	state_ = enemy.idle;
}

var _x_speed = lengthdir_x(speed_, direction_);
var _y_speed = lengthdir_y(speed_, direction_);

if (_x_speed != 0)
{
	image_xscale = sign(_x_speed);	
}

Scr_basicEnemyAttack();