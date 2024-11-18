/// @function scr_deal_card(targetId)

// 11-11-2024 - TODONE!! - 11-11-2024 - src_draw_card needs to take in one parameter. It needs either global.player or 
// global.dealer to figureout where to deal card to.

// 11-11-2024 - targetId = the person who is receiving dealt card. Either, dealer, player, or npc
function scr_deal_card(targetId, cardData) {
	
    //Check for card in global.deck
    if (cardData != undefined) {
		
        if (targetId == global.dealer_id) {  // Fixed comparison operator
            //Assigning positioning x/y for dealer target
			show_debug_message( "targetId == global.dealer_id")
			pos_y = 75 ;
			y = pos_y;
			
			pos_x = 270 + 15*(real(array_length(global.dealer_cards)));
			x = pos_x;

		
        } else if (targetId == global.player_id){ 
			show_debug_message( "targetId == global.player_id");
			
			pos_y = 300;
			y = pos_y;
			
			pos_x = 270 + 15*(real(array_length(global.player_cards)));
			x = pos_x;
			
		} else { y = center_y; }

	    // CARDS ARE STILL TO BE DRAWN!
	    var face_up = true;
		
		var targetHand;
		if (targetId == global.dealer_id) {
		    targetHand = global.dealer_cards;
		} else if (targetId == global.player_id) {
		    targetHand = global.player_cards;
		}
		
		//PUSHING CARD TO ARRAY AND DRAWING CARD
		// 11-11-2024 - TODONE!! - if I pass any numbers other than x and y into this function. It works fine, but I can not pass the variables x and y :/

		scr_card_array_push(targetHand, cardData, x, y, face_up);

        global.card_index += 1;
		
    } else {
        //NO MORE CARDS!!    
        show_debug_message("No more cards!");
    }
}