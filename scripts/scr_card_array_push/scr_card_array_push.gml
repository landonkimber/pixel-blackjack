// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Takes an array, either global.player/dealer_cards, pushes a card from global.deck array into player/dealer.

// Params( array_to_push, card_object, x, y, facingUpBoolean )

// 11-18-2024 - NOTE - This script might be unnecessary. Will look into just implementing this code into scr_deal_card 

function scr_card_array_push(pushArray, cardObject, x, y, facingUpBoolean) {
	
    if (!is_real(x) || !is_real(y)) {
        throw "Error: x and y coordinates must be real numbers";
    } else { show_debug_message("x and y are real!")}
	
	cardObject.facingUp = facingUpBoolean;
	
	array_push(pushArray, cardObject);
	
	var roomMiddleX = room_width / 2;
	
	var new_card = instance_create_layer(roomMiddleX, 0, "Instances", obj_card);
	 
	show_debug_message("Final position check - x: " + string(new_card.x) + " y: " + string(new_card.y));
	 
	new_card.target_x = x;
    new_card.target_y = y;
	 
	 new_card.card = cardObject;
	
	return new_card;
}