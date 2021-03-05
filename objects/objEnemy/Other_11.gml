/// @description Take Damage

HP -= 1;

if (HP<= 0)
{
	instance_destroy();
	objGame.totalKills = objGame.totalKills + 1;
}