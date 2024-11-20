// Draw event
draw_set_color(c_white);  // Reset draw color just in case

// Save the current drawing state
var xscale = image_xscale;
var yscale = image_yscale;
var angle = image_angle;

if(card.facingUp){
    // Draw each sprite with rotation
    draw_sprite_ext(spr_card_basic_bg, image_index, x, y, xscale, yscale, angle, c_white, 1);
    draw_sprite_ext(spr_card_basic_decor, image_index, x, y, xscale, yscale, angle, c_white, 1);
    var rank_sprite = "spr_card_basic_rank_" + string(card.rank) + "_" + string(card.color);
    var suit_sprite = "spr_card_basic_suit_" + string(card.suit);
    draw_sprite_ext(asset_get_index(rank_sprite), image_index, x, y, xscale, yscale, angle, c_white, 1);
    draw_sprite_ext(asset_get_index(suit_sprite), image_index, x, y, xscale, yscale, angle, c_white, 1);
} else {
    draw_sprite_ext(spr_card_basic_back, image_index, x, y, xscale, yscale, angle, c_white, 1);
}