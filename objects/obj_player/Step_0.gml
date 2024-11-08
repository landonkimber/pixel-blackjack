/// @description Insert description here
// You can write your code in this editor


//THIS BLOCK IS OKAY!!! IT WORKS. I need to figure out how to track the change in card count upon a src_card_draw 
// called from the obj_game_manager!
if (keyboard_check_pressed(ord("P"))) {
	show_debug_message("[ ] global.player_cards"+string(global.player_cards))
}


/// Create Event of obj_player
previous_card_count = array_length(global.player_cards);
show_debug_message( "prev_player_card_count" + string(previous_card_count));

/// Step Event of obj_player
var current_card_count = array_length(global.player_cards);
show_debug_message( "current_player_card_count" + string(current_card_count))

if (current_card_count > previous_card_count) {
    // A new card was added!
    show_debug_message("New card added!");
    
    // Create card object for the newest card
    var new_card = instance_create_layer(x, y, "Instances", obj_card, {
        card: global.player_cards[current_card_count - 1]  // Get the last card added
    });
    
    // Update the previous count
    previous_card_count = current_card_count;
}

