x = mouse_x-mOffsetX;
y = mouse_y-mOffsetY;

//jump any weapon symbols with the card
for (var i = 0; i < array_length_1d(weapons_symbol); i ++){
    weapons_symbol[i].x = x+weapons_symbol[i].offsetX;
    weapons_symbol[i].y = y+weapons_symbol[i].offsetY;
    weapons_symbol[i].showHover = false;
    //make sure symbol is shown
    weapons_symbol[i].depth = -150;
}

//make sure that card draws above other things
depth = -100;
