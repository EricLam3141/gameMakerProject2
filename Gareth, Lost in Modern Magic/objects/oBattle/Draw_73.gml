if (transitionProg < 1.0)
{
	draw_set_alpha(1.0-transitionProg)
	var _c = view_camera[0];
	if (surface_exists(surfTransition))
	{
		draw_surface_stretched
		(
			surfTransition,
			camera_get_view_x(_c),
			camera_get_view_y(_c),
			camera_get_view_width(_c),
			camera_get_view_height(_c)
		);
	}
	draw_set_alpha(1.0);
}


