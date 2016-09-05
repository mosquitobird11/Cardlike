if (border_type == "pickup" && moving == "none"){
    draw_set_color(c_red);
    draw_set_alpha(0.4);
    draw_roundrect_ext(x-4,y-4,x+sprite_width+2,y+sprite_height+2,12,12,false);
    draw_set_alpha(1);
}
