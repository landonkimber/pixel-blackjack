/// @description Create Event of obj_deck
// Create a global deck accessible by any object
randomize();

global.card_index = 0;

global.deck = ds_list_create();
suits = ["hearts", "diamonds", "clubs", "spades"];
ranks = ["ace", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "jack", "queen", "king"];

for (var i = 0; i < array_length(suits); i++) {
    for (var j = 0; j < array_length(ranks); j++) {
        var card = {
            suit: suits[i],
            rank: ranks[j],
            color: (i < 2) ? "red" : "blue",
            value: min(j + 1, 10)
        };
        ds_list_add(global.deck, card);
    }
}

ds_list_shuffle(global.deck)

// Debug: Show the number of cards in the deck
show_debug_message("Number of cards in the deck: " + string(ds_list_size(global.deck)));

// Debug: Show the first card in the deck
if (ds_list_size(global.deck) > 0) {
    var first_card = global.deck[| 0];
    show_debug_message("First card: " + first_card.rank + " of " + first_card.suit);
}