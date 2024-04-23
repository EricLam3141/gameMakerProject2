if (escapeDelay > 0)
{
	draw_set_font(fnOpenSansPX);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text(x,bbox_top-4,"?");
}
draw_self();