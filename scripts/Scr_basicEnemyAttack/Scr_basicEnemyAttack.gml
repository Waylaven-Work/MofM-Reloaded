if(not instance_exists(Obj_player))
{
	exit;	
}

var dist_To_Player = point_distance(x, y, Obj_player.x, Obj_player.y);

if (dist_To_Player < 16)
{
	state_ = enemy.attack;
	image_index = 0;
	sprite_index = Sprite_porcupineAttack;
}