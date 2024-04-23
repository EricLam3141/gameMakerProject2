with (obj_menu) instance_destroy();
with (oBattleUnit) instance_destroy();
instance_activate_all();
if (conclusionType == 2)
{
	with (creator)
	{
		escapeDelay = 300;	
		visible = true;
	}
}

if (conclusionType == 1)
{
	with (creator) 
	{
		dead = true;
		visible = true;
	}
}