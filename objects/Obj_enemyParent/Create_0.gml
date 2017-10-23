//Inherit from lifeform parent
event_inherited();
initialize_movement_entity(1, 0.5, Obj_solid);

starting_state_ = noone;
state_ = starting_state_;	

enum enemy
{
	hit
}