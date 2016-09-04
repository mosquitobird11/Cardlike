//give a parent x and y
xpos = argument0 + 200;
ypos = argument1 - 64;
opa = argument2;
opa_delta = argument3;
opa_target = argument4;

//Draw a fog to obscure other shit
draw_set_alpha(opa);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_alpha(1);
if (opa < opa_target && opa_delta > 0){
    opa += opa_delta;
} else if (opa > 0 && opa_delta < 0){
    opa += opa_delta;
}

//draw base case
draw_sprite(sprite_index, 0, xpos, ypos);

//draw Portrait
var port = asset_get_index("spr_card_"+rtype+"_"+rname);
draw_sprite(port,0,xpos+2,ypos+26);

//draw Type and Tribe Circles
var ty = asset_get_index("spr_circle_"+rtype);
var tr = asset_get_index("spr_circle_"+rtribe);
draw_sprite(ty,0,xpos+2,ypos+2);
draw_sprite(tr,0,xpos+151,ypos+2);

//----TEXT----//
draw_set_halign(fa_center);

//Write Tribe and Type
draw_set_font(font_delius);
draw_text(xpos+54,ypos+6,type);
draw_text(xpos+119,ypos+6,tribe);

//Write Name & level
draw_set_color(get_color_level(level));
draw_set_font(font_kav_large);
draw_text(xpos+100,ypos+127,name);
draw_text(xpos+12,ypos+127,string(level));
draw_set_color(c_black);

//Write Attributes
draw_set_font(font_kav_b);
draw_text(xpos+30,ypos+148,"Att: "+string(att));
draw_text(xpos+88,ypos+148,"Uses: "+string(uses));
draw_text(xpos+146,ypos+148,dmg);

//Draw Card Text
draw_set_halign(fa_left);
draw_text_rtf(xpos+4,ypos+165,card_text,font_delius,font_kav_b,font_delius_i,font_delius_bi);
