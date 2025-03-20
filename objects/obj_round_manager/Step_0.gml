/// @description Insert description here
// You can write your code in this editor
if (global.players_turn == true ) {
	if (keyboard_check_pressed(ord("H"))) {
	  scr_deal_card(playersIdArray[global.current_player], global.deck[| global.card_index], true, x, y);
	  scr_check_scores();
	} else if (keyboard_check_pressed(ord("S"))) {
	  //src_next_turn();
	  show_debug_message("Stand");
	  global.current_player += 1;
	}
	
	if (global.current_player == dealers_turn_number){
		scr_dealers_turn();
	}
}
