/// @description Hit Stuff

if (HP <= 0)
{
	exit;	
}

if (Scr_hurtboxEntityCanBeHitBy(other))
{
	invincible = true;
	alarm[1] = game_get_speed(gamespeed_fps)/4;
	HP -= other.damage;
	state_ = enemy.hit;
}

set_movement(point_direction(other.x, other.y, x, y), other.knockback);