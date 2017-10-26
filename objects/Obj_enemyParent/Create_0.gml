//Inherit from lifeform parent
event_inherited();
initialize_movement_entity(1, 0.5, Obj_solid);

enum enemy
{
	hit,
	idle, 
	move, 
	attack, 
	wait
}

starting_state = enemy.idle;
state_ = starting_state;

alarm[0] = random_range(0, 1) * game_get_speed(gamespeed_fps);