/// @description Movement/Shooting

// Movement
player_speed = 4
if (keyboard_check(vk_right)) {
	x += player_speed;
}
if(keyboard_check(vk_left)) {
	x -= player_speed;
}
if(keyboard_check(vk_up)) {
	y -= player_speed;
}
if(keyboard_check(vk_down)) {
	y += player_speed;
}

image_angle = point_direction(x, y, mouse_x, mouse_y);

// Shooting
if(mouse_check_button(mb_left) && cooldown < 1) {
	instance_create_layer(x, y, "Bullets", obj_bullet);
	cooldown = 3;
}

cooldown -= 1;