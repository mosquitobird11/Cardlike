//Checks if we should be going fast
if (point_distance(x,y,targetX,targetY) > 200){
    CARD_SPEED_LIMIT = 50;
}else{
    CARD_SPEED_LIMIT = 25;
}


//Checks if the targets are close enough to jump to
if (point_distance(x,y,targetX,targetY) > CARD_SPEED_LIMIT){
    move_towards_point(targetX,targetY, CARD_SPEED_LIMIT);
}else{
    x = targetX;
    y = targetY;
    speed = 0;
}

//jump any weapon symbols with the card
for (var i = 0; i < array_length_1d(weapons_symbol); i ++){
    weapons_symbol[i].x = x+weapons_symbol[i].offsetX;
    weapons_symbol[i].y = y+weapons_symbol[i].offsetY;
}
