/// @description Insert description here


// 11-19-2024 - NOTE - If/Else added because the cards were tweaking once they got to 
// target x/y
if (abs(x - target_x) > 1 || abs(y - target_y) > 1) {

    x = lerp(x, target_x, lerp_amount);
    y = lerp(y, target_y, lerp_amount);
	
	image_angle = lerp(image_angle, target_angle, lerp_amount);
	
} else {
	image_angle = 0;
    x = target_x;
    y = target_y;
}