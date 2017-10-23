/// @description Move State

var x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));
image_speed = 0;
var input_dir = point_direction(0, 0, x_input, y_input);
var attack_input = mouse_check_button_pressed(mb_left);
var roll_input = keyboard_check_pressed(vk_space);
rollDir = dirFace*90;



if (x_input = 0 and y_input = 0)
{
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
}
else
{
	image_speed = 0.6;
	if (x_input != 0)
	{
		image_xscale = x_input;	
	}
	Scr_dirFace(input_dir);
	add_movement_maxspeed(input_dir, acceleration, max_speed);
	rollDir = dirFace*90;
}

if (attack_input == true)
{
	image_index = 0;
	state = player.attack;
}

if (roll_input == true)
{
	image_index = 0;
	state = player.roll;
}

move_movement_entity(false);
