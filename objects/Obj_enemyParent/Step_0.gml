/// @description Actions enemies take
depth = -y;

if (HP <= 0)
{
	instance_destroy();
}

if (state_ != noone)
{
	event_user(state_);
}