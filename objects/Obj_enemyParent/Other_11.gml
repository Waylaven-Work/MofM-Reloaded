/// @description Idle State
// You can write your code in this editor
image_index = 0;

if (alarm[0] <= 0)
{
	alarm[0] = random_range(2, 4) * game_get_speed(gamespeed_fps);
	state_ = enemy.move;
	direction_ = random(360);
}

Scr_basicEnemyAttack();