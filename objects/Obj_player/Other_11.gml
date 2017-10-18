/// @description Attack State
image_speed = .8;
var _angle = dirFace * 90;
var _frames = image_number - 1
var _damage = 1;
var _knockback = 8;

if animation_hit_frame(1)
{
	Scr_createHitbox(Sprite_swordHitbox, x, y, _angle, _frames, [], _damage, _knockback);
}

if animation_hit_frame(_frames)
{
	state = player.move;	
}