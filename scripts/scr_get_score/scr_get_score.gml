// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @param {string} targetId <player/dealer id that you need score from>

function scr_get_score(targetId) {
	
   	var targetHand = variable_global_get(targetId + "_cards")
    
	global.handTotal = 0;
    var checkScores = function(element, index) {		
		if (element.facingUp) {
			global.handTotal += element.value;		
		}
    }
	
	var checkAces = function(element, index) {
		if (element.rank == "ace") {
			global.handTotal -= 10;
			return
		}
	}
    
    array_foreach(targetHand, checkScores);
	
	if (global.handTotal > 21) {
		array_foreach(targetHand, checkAces);	
	}
	
    return global.handTotal;
}