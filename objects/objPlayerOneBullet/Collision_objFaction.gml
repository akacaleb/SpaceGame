/// @description destroy and spawn
if (other == creator) exit;

instance_destroy();

if (other.faction == faction) exit; // check if our faction

if (other.faction == factions.neutral)
{
	objGame.totalKills = objGame.totalKills + 1;	
}

with (other) event_perform(ev_other, ev_user1); // damage object

