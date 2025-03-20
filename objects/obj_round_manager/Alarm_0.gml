/// @description Insert description here
// You can write your code in this editor


if (alarm_index < 4) {  
    switch(alarm_index) {
		//PLAYER FIRST CARD
        case 0:
            scr_deal_card(playersIdArray[global.current_player], global.deck[| global.card_index], true, x, y);
            global.current_player += 1;
            
            if (global.current_player >= array_length(playersIdArray)) {
                global.current_player = 0;
                alarm_index += 1;
            }
            break;
            
		//DEALER FIRST CARD	
        case 1:
            scr_deal_card(global.dealer_id, global.deck[| global.card_index], true, x, y);
            global.current_player +=1
			alarm_index += 1;
            break;
        
		//PLAYER SECOND CARD
        case 2: 
            scr_deal_card(playersIdArray[global.current_player], global.deck[| global.card_index], true, x, y);
            global.current_player += 1;
            
            if (global.current_player >= array_length(playersIdArray)) {
				
                global.current_player = 0;
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

global.players_turn = true;