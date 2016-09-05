//Draws a shadow underneath a moving card
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_roundrect_ext(x+8,y+8,x+8+sprite_width,y+8+sprite_height,12,12,false);
draw_set_alpha(1);
