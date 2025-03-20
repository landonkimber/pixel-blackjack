// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_scores(){
	if (global.player1_hand_count > 21){
		show_debug_message("BUUUUUST!!!");
		// scr_player_bust() 
		//TODO  - SCR_LOST :(
		global.current_player += 1;
		draw_set_font(font_h2);
		draw_text( room_width/2 , room_height/2, "BUST!!");
	} else if (global.player1_hand_count == 21) {
		if (global.dealer_hand_count == 21 ) {
			//TODO - SCR_PUSH
			show_debug_message("PUS!!");
		} else if (global.dealer_hand_count > 21 ) {
			//TODO - SCR_WIN
			show_debug_message("WIN I WIN I WIN I WIN")
		}
	}
}