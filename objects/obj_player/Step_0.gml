/// @description Insert description here
// You can write your code in this editor



// 11-9-2024 - NOTE - THIS BLOCK IS OKAY!!! IT WORKS. I need to figure out how to track the change in
// card count upon a src_card_draw called from the obj_game_manager!
// 11-11-2024 - NOTE - This block is useless. it does work! but rather than checking for a card to draw EVERY 
// step event. Drawing the card is being handled in the scr_draw_card.
/*var current_card_count = array_length(global.player_cards); 
if ( current_card_count != previous_card_count) {
	show_debug_message("New card added!");
    
	// Create card object for the newest card
	var new_card = instance_create_layer(x, y, "Instances", obj_card, {
	        card: global.player_cards[current_card_count - 1]  // Get the last card added
	});
}*/


if (keyboard_check_pressed(ord("P"))) {
	show_debug_message("[ ] global.player_cards"+string(global.player_cards))
}