/// @description Insert description here
// You can write your code in this editor

global.game_ticks += 1;


if(keyboard_check_pressed(ord("T"))){
	show_debug_message("global_game_ticks = " + string(global.game_ticks));
}


if (keyboard_check_released(vk_space)) {
	
	if ((global.card_index%2)=0) {
		
		scr_draw_card(((global.card_index*25)+200), 50); 
		show_debug_message("global.dealer_cards"+string(global.dealer_cards));
	
	} else {
		
		scr_draw_card(((global.card_index*25)+175), 315); 
		show_debug_message("global.player_cards"+string(global.player_cards));
	
	}
}

