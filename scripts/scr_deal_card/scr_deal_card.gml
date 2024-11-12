/// @function scr_deal_card(targetId)

// 11-11-2024 - TODO_IS_DONE!! - 11-11-2024 - src_draw_card needs to take in one parameter. It needs either global.player or 
// global.dealer to figureout where to deal card to.

// 11-11-2024 - targetId = the person who is receiving dealt card. Either, dealer, player, or npc
function scr_deal_card(targetId, cardData) {

	show_debug_message("**********Card Draw Pressed!********");
    var center_x = display_get_gui_width() / 2;
    show_debug_message(" SCR_DC : targetId = " + string(targetId));
	show_debug_message(" SCR_DC : targetId TYPE: " + typeof(targetId));
	show_debug_message(" SCR_DC : global.dealer_id : " + string(global.dealer_id));
	show_debug_message(" SCR_DC : global.deck[| global.card_index] : "+string(global.deck[| global.card_index])+ "     | i = "+string(global.card_index));
	 show_debug_message(" SCR_DC : global.dealer_cards : " + string(global.dealer_cards));
    show_debug_message(" SCR_DC : golbal.player_cards : " + string(global.player_cards));
    
	
	
    //Check for card in global.deck
    if (cardData != undefined) {
		x = center_x;
        
        if (targetId == global.dealer_id) {  // Fixed comparison operator
            //Assigning positioning x/y for dealer target
			show_debug_message( "targetId == global.dealer_id")
			y = 50;
		
        } else if (targetId == global.player_id){ 
			show_debug_message( "targetId == global.player_id");
			y = 315;
		} else { y  = 200; }

	    // CARDS ARE STILL TO BE DRAWN!
	    var face_up = true;
		
		var targetHand;
		if (targetId == global.dealer_id) {
		    targetHand = global.dealer_cards;
		} else if (targetId == global.player_id) {
		    targetHand = global.player_cards;
		}
		
		//PUSHING CARD TO ARRAY AND DRAWING CARD
		// 11-11-2024 - TODO - if I pass any numbers other than x and y into this function. It works fine, but I can not pass the variables x and y :/
		scr_card_array_push(targetHand, cardData, 100, 100, face_up);


        show_debug_message("global.card_index: " + string(global.card_index));
        global.card_index += 1;
		
    } else {
        //NO MORE CARDS!!    
        show_debug_message("No more cards!");
    }
}