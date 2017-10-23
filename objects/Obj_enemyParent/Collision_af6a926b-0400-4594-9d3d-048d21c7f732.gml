/// @description Hit Stuff

if (HP <= 0)
{
	exit;	
}

HP -= other.damage;
state_ = enemy.hit;

set_movement(point_direction(other.x, other.y, x, y), other.knockback);