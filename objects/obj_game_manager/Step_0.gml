/// @description Insert description here
// You can write your code in this editor

global.game_ticks += 1;

if(keyboard_check_pressed(ord("T"))){
    show_debug_message("global_game_ticks = " + string(global.game_ticks));
}



if (keyboard_check_released(vk_space)) {
	
	show_debug_message("***************************************************************");
    show_debug_message(" OBJ_GM : global.dealer_cards : " + string(global.dealer_cards));
    show_debug_message(" OBJ_GM : global.player_cards : " + string(global.player_cards));
    
    if ((global.card_index % 2) == 0) {
        scr_deal_card(global.dealer_id, global.deck[| global.card_index]); 
        show_debug_message("global.dealer_cards " + string(global.dealer_cards));
    } else {
        scr_deal_card(global.player_id, global.deck[| global.card_index]); 
        show_debug_message("global.player_cards " + string(global.player_cards));
    }
}