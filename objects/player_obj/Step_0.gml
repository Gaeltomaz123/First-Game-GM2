/// @description Insert description here
// You can write your code in this editor
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
shift_key = keyboard_check(vk_shift);

x_speed = move_speed * (right_key - left_key);
y_speed = move_speed * (down_key - up_key);

//Colisions
if place_meeting(x + x_speed, y, wall_obj) {
	x_speed = 0;
}

if place_meeting(x, y + y_speed, wall_obj) {
	y_speed = 0;
}

x += x_speed
y += y_speed

