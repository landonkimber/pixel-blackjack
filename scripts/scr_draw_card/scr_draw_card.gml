/// @function scr_draw_card(x, y)
function scr_draw_card(x, y) {
    show_debug_message("Card Draw Pressed!");
    
    show_debug_message(global.deck[| global.card_index]);
    
    if (global.deck[| global.card_index] != undefined) {
        //CARDS ARE STILL TO BE DRAWN! 
		
		//TEST CODE... PROBABLY WILL BE DELeTED
		/*
        var new_card = instance_create_layer(x, y, "Instances", obj_card, {
            card: global.deck[| global.card_index]
        });
		*/
		
		if (!(global.card_index%2)=0) {
		array_push(global.player_cards, global.deck[| global.card_index]);
		} else {
		array_push(global.dealer_cards, global.deck[| global.card_index]);
		}
	
        show_debug_message("global.card_index: " + string(global.card_index));
        global.card_index += 1;
    } else {
        //NO MORE CARDS!!    
        show_debug_message("No more cards!");
    }
}