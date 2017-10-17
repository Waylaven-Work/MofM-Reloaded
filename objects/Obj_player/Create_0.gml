initialize_movement_entity(5, 1, Obj_architectureParent);
event_inherited()
image_speed = 0;
dirFace = dir.right;
rollDir = 0;
acceleration = 0.5;
max_speed = 1.5;
rollSpeed = 2;
HP = 10;

//This basically makes a lookup table
enum items 
{
	knife,
	potion,
	magic
}

enum player 
{
	move,
	attack,
	roll
}

enum dir
{
	right,
	up, 
	left,
	down 
}

state = player.move;

//Lookup table for sprite movement
//Replaces physics based syste clutter
sprite[player.move, dir.right] = Sprite_playerRunRight;
sprite[player.move, dir.up] = Sprite_playerRunUp;
sprite[player.move, dir.left] = Sprite_playerRunRight;
sprite[player.move, dir.down] = Sprite_playerRunDown;

//Attacks
sprite[player.attack, dir.right] = Sprite_playerAttackRight;
sprite[player.attack, dir.up] = Sprite_playerAttackUp;
sprite[player.attack, dir.left] = Sprite_playerAttackRight;
sprite[player.attack, dir.down] = Sprite_playerAttackDown;

//Roll
sprite[player.roll, dir.right] = Sprite_playerRollRight;
sprite[player.roll, dir.up] = Sprite_playerRollUp;
sprite[player.roll, dir.left] = Sprite_playerRollRight;
sprite[player.roll, dir.down] = Sprite_playerRollDown;

//Slot 0 for active equpiment
//global.inventory[items.knife] = ["knife"];
//global.inventory[items.potion] = ["potion"];
//global.inventory[items.magic] = ["magic"];
