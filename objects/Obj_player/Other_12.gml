/// @description Roll State
// You can write your code in this editor
image_speed = .8;

set_movement(rollDir, rollSpeed);
move_movement_entity(false)

if animation_hit_frame(image_number - 1)
{
	state = player.move;	
}