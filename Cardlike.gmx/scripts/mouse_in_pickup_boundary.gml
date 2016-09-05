//Called by cards to see if the mouse is within the pickup boundary
//Returns bool
if (
(mouse_x > (x+CARD_BORDER_NO_PICKUP))&&
(mouse_x < (x+sprite_width-CARD_BORDER_NO_PICKUP))&&
(mouse_y > (y+CARD_BORDER_NO_PICKUP))&&
(mouse_y < (y+sprite_height-CARD_BORDER_NO_PICKUP))
){
    return true;
}

return false;
