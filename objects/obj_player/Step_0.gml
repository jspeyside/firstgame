/// @description Movement/Shooting

// Movement
player_speed = 4;
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	x += player_speed;
}
if(keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	x -= player_speed;
}
if(keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	y -= player_speed;
}
if(keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	y += player_speed;
}

image_angle = point_direction(x, y, mouse_x, mouse_y);

// Shooting
if(mouse_check_button(mb_left) && cooldown < 1) {
	instance_create_layer(x, y, "Bullets", obj_bullet);
	cooldown = 3;
}

cooldown -= 1;