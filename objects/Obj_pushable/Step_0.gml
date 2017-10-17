/// Make this block pushable by the player
//BUG: FIX BLOCK DROPPING
//CONDITION: SPAM LEFT AND RIGHT ARROWS WHILE DRAGGING BLOCK
//CAUSE: MULTIPLE KEYS BEING HELD DOWN FOR MOVEMENT WILL DROP BLOCK
//Push

if (instance_exists(Obj_player))
{
	if (keyboard_check(vk_right)  and keyboard_check(ord("E")))
	{
		if (place_meeting(x - 2, y, Obj_player))
		{
			x = x + Obj_player.speed_;
		}
		else if (place_meeting(x + 2, y, Obj_player))
		{
			x = x + Obj_player.speed_;
		}
	}
	if (keyboard_check(vk_left) and keyboard_check(ord("E")) and place_meeting(x + 2, y, Obj_player))
	{
		x = x - 2;
	}
	if (keyboard_check(vk_up) and keyboard_check(ord("E")) and place_meeting(x, y + 2, Obj_player))
	{
		y = y - 2;
	}
	if (keyboard_check(vk_down) and keyboard_check(ord("E")) and place_meeting(x, y - 2, Obj_player))
	{
		y = y + 2;
	}
}