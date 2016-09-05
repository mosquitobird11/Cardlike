depth = 0;

for (var i = 0; i < array_length_1d(weapons_symbol); i ++){
    weapons_symbol[i].x = x+weapons_symbol[i].offsetX;
    weapons_symbol[i].y = y+weapons_symbol[i].offsetY;
    weapons_symbol[i].showHover = true;
    //reset the depth that changes as you drag around
    weapons_symbol[i].depth = -10;
}
