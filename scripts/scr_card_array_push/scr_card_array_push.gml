// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Takes an array, either global.player/dealer_cards, pushes a card from global.deck array into player/dealer.

// Params( array_to_push, card_object, x, y, facingUpBoolean )
function scr_card_array_push(pushArray, cardObject, x, y, facingUpBoolean) {
	
	cardObject.facingUp = facingUpBoolean;
	
	array_push(pushArray, cardObject);
	
	 var new_card = instance_create_layer(x, y, "Instances", obj_card, {
        card: cardObject
    });

}