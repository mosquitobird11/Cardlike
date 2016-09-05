//Draw shadow if moving
if (moving != "none"){
    card_draw_shadow();
}
//Draw Border
card_draw_border();

//draw base case
draw_sprite(sprite_index, 0, x, y);

//draw Portrait
var port = asset_get_index("spr_card_"+rtype+"_"+rname);
draw_sprite(port,0,x+2,y+26);

//draw Type and Tribe Circles
var ty = asset_get_index("spr_circle_"+rtype);
var tr = asset_get_index("spr_circle_"+rtribe);
draw_sprite(ty,0,x+2,y+2);
draw_sprite(tr,0,x+151,y+2);

//----TEXT----//
draw_set_halign(fa_center);

//Write Tribe and Type
draw_set_color(c_black);
draw_set_font(font_delius);
draw_text(x+54,y+6,type);
draw_text(x+119,y+6,tribe);

//Write Name & level
draw_set_color(get_color_level(level));
draw_set_font(font_kav_large);
draw_text(x+100,y+127,name);
draw_text(x+12,y+127,string(level));
draw_set_color(c_black);

//Write Attributes
draw_set_font(font_kav_b);
draw_text(x+30,y+148,"Str: "+string(str));
draw_text(x+88,y+148,"Def: "+string(def));
draw_text(x+146,y+148,"HP: "+string(hp));

//Draw Card Text
draw_set_halign(fa_left);
draw_text_rtf(x+4,y+165,card_text,font_delius,font_kav_b,font_delius_i,font_delius_bi);
