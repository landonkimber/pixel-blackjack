/// @description Insert description here
// You can write your code in this editor

//THIS BLOCK IS OKAY!!! IT WORKS. I need to figure out how to track the change in card count upon a src_card_draw 
// called from the obj_game_manager! 11/9/2023

if (keyboard_check_pressed(ord("D"))) {
	show_debug_message("[ ] global.dealer_cards"+string(global.dealer_cards));
	show_debug_message("Dealer hand count : " + string(global.dealer_hand_count));
}
