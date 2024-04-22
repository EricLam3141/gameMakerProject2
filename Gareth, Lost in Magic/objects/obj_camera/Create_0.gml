/// @description Set up camera
cam = view_camera[0];
follow = obj_player;
buff = 32;
viewWHalf = camera_get_view_width(cam) * 0.5;
viewHHalf = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
display_set_gui_size(320,180);

window_set_fullscreen(true);