/// @description Attack State
image_speed = .3;
if (animation_hit_frame(3))
{
	var _damage = 1;
	var _knockback = 4;
	Scr_createHitbox(Sprite_porcupineHitbox, x, y, 0, 1, [Obj_player], _damage, _knockback);
}

if (animation_hit_frame(image_number -1))
{
	state_ = enemy.idle;
	sprite_index = Sprite_porcupine;
	alarm[1] = 2*game_get_speed(gamespeed_fps);
}