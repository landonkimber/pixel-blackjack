/// @description Insert description here
// You can write your code in this editor


if (alarm_index < 4) {  
    switch(alarm_index) {
		//PLAYER FIRST CARD
        case 0:
            scr_deal_card(playersIdArray[current_player], global.deck[| global.card_index], true, x, y);
            current_player += 1;
            
            if (current_player >= array_length(playersIdArray)) {
                current_player = 0;
                alarm_index += 1;
            }
            break;
            
		//DEALER FIRST CARD	
        case 1:
            scr_deal_card(global.dealer_id, global.deck[| global.card_index], true, x, y);
            alarm_index += 1;
            break;
        
		//PLAYER SECOND CARD
        case 2: 
            scr_deal_card(playersIdArray[current_player], global.deck[| global.card_index], true, x, y);
            current_player += 1;
            
            if (current_player >= array_length(playersIdArray)) {
                current_player = 0;
                alarm_index += 1;
            }
            break;
		
		//DEALER SECOND CARD
		case 3:
		  scr_deal_card(global.dealer_id, global.deck[| global.card_index], false, x, y);
		  alarm_index += 1; 
		  break;
    }
    
    alarm[0] = 30;  
}