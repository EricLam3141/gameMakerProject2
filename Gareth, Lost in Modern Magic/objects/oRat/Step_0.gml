escapeDelay = max(escapeDelay-1, 0);

if (dead) 
{
	image_alpha -= 0.05;
	image_blend = c_red;
	if (image_alpha <= 0) instance_destroy();
}