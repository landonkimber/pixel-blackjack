
depth = -instance_count;

//Sprites on all cards!!
draw_sprite(spr_card_basic_bg, image_index, x, y);
draw_sprite(spr_card_basic_decor, image_index, x, y);


rankSprite = "spr_card_basic_rank_" + string(card.rank) + "_" + string(card.color);
suitSprite = "spr_card_basic_suit_" + string(card.suit);



draw_sprite(asset_get_index(rankSprite), image_index, x, y);
draw_sprite(asset_get_index(suitSprite), image_index, x, y);