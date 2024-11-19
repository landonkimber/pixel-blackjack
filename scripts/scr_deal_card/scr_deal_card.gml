/// @function scr_deal_card(targetId)

// 11-11-2024 - TODONE!! - 11-11-2024 - src_draw_card needs to take in one parameter. It needs either global.player or 
// global.dealer to figureout where to deal card to.

// 11-11-2024 - targetId = the person who is receiving dealt card. Either, dealer, player, or npc

function scr_deal_card(targetId, cardData, faceUpBoolean, x = 0, y = 0) {
	
	// 11-18-2024 - NOTE - Added debug messages to help simplify this function.
	show_debug_message("********************* Deal Card Function ************************")
	show_debug_message(" DC : targetId : " + string(targetId));
	
	var targetHand = variable_global_get(targetId + "_cards")
	
	show_debug_message(" DC : targetHand : " + string(targetHand));
	
    //Check for card in global.deck
    if (cardData != undefined) {
		
        if (targetId == global.dealer_id) { 
            //Assigning positioning x/y for dealer target

			pos_y = 75 ;
			y = pos_y;
			
			pos_x = 270 + 15*(real(array_length(targetHand)));
			x = pos_x;

		
        } else if (targetId == global.player1_id){ 
			
			// 11-18-2024 - TODO - Need to position cards based on number of players rather than fixed positions. Dealer is ok tho, same position no matter
			// number of players. This may need tobe handled in obj_round_manager hence the x/y params that were added today for this script.
			
			pos_y = 300;
			y = pos_y;
			
			pos_x = 270 + 15*(real(array_length(targetHand)));
			x = pos_x;
			
		} else { y = center_y; }

	    // CARDS ARE STILL TO BE DRAWN!
		
		//PUSHING CARD TO ARRAY AND DRAWING CARD
		// 11-11-2024 - TODONE!! - if I pass any numbers other than x and y into this function. It works fine, but I can not pass the variables x and y :/

		// 11-18-2024 - TODO - Simplify scr_card_array_push. Might be an unnecessary script. Its not that big :/
		scr_card_array_push(targetHand, cardData, x, y, faceUpBoolean);
		variable_global_set(targetId + "_hand_count", scr_get_score(targetId));
				
        global.card_index += 1;
    } else {
        //NO MORE CARDS!!    
        show_debug_message("No more cards!");
    }
}