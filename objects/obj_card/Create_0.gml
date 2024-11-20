

card = undefined; 
visible = true;
depth = -instance_number(obj_card);

start_angle = 90;
target_angle = 723; 
image_angle = start_angle;

show_debug_message("Current angle: " + string(image_angle));

target_x = x;
target_y = y;
move_speed = 5;


lerp_amount = 0.135;


show_debug_message("From Card obj" + string(card));
