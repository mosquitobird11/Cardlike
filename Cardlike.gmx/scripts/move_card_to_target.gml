
//Checks if the targets are close enough to jump to
if (point_distance(x,y,targetX,targetY) > CARD_SPEED_LIMIT){
    //move_towards_point(targetX,targetY, CARD_SPEED_LIMIT);
    //Dont use this because using speed is dumb and fucks up trailing symbols
    var difX = x-targetX;
    var difY = y-targetY;
    if (abs(difX) > CARD_SPEED_LIMIT){
        x -= CARD_SPEED_LIMIT*(difX/abs(difX)); //multiply by sign
    }else{
        x -= difX;
    }
    if (abs(difY) > CARD_SPEED_LIMIT){
        y -= CARD_SPEED_LIMIT*(difY/abs(difY)); //multiply by sign
    }else{
        y -= difY;
    }
}else{
    x = targetX;
    y = targetY;
}

//jump any weapon symbols with the card
for (var i = 0; i < array_length_1d(weapons_symbol); i ++){
    weapons_symbol[i].x = x+weapons_symbol[i].offsetX;
    weapons_symbol[i].y = y+weapons_symbol[i].offsetY;
    weapons_symbol[i].showHover = true;
}
