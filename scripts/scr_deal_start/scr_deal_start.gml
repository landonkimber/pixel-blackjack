// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @param {real} playerNumber <the total number of players being dealt to, not including the dealer. 1 = one player, one dealer, 2 = 2 players, one dealer, etc.>
/// @param {array} playerIds <an array containing playerId's>
// 11-18-2024 - NOTE - This will control how the cards are dealt at the start of each round.  
// 11-18-2024 - TODO - Add animations. 
function scr_deal_start( playerNumber, playerIds){
	/*
	show_debug_message("player number : " + string(playerNumber));
    for (var i = 0; i < array_length(playerIds); i++) {
        show_debug_message("Index " + string(i) + ": " + string(playerIds[i]));
    }
	*/
	
	for (var i = 0; i < array_length(playerIds); i++) {
		
		scr_deal_card(playerIds[i], global.deck[| global.card_index], true, x, y); 

	}

	scr_deal_card(global.dealer_id, global.deck[|global.card_index], true, x, y);

	for (var i = 0; i < array_length(playerIds); i++) {

		scr_deal_card(playerIds[i], global.deck[| global.card_index], true, x, y); 

	}

	scr_deal_card(global.dealer_id, global.deck[|global.card_index], false, x, y);

}
