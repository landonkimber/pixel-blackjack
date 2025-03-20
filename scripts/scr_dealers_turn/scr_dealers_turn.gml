// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dealers_turn(){
	global.current_player += 1;
	show_debug_message("dealers_turn");
	
	//TODO - ADD FLIP ANIMATION
	
	//REVEALS AND COUNTS SECOND CARD
	global.dealer_cards[1].facingUp = true;
	show_debug_message(global.dealer_cards[1]);
	global.dealer_hand_count += global.dealer_cards[1].value;
	
	//CHECKS SCORE
	if (global.dealer_hand_count >= 17){
		//TODO - FIX scr_check_scores
		// scr_check_scores();
		show_debug_message("scr_check_scores needs to run")
	} else {
		show_debug_message("we need to do ummm DEaler needs anotha one")
		scr_deal_card(1, global.deck[| global.card_index], true, x, y);
	}
}