//controls

//player 1
global.controls[0, ctrl.left] = keyboard_check(ord("A"));
global.controls[0, ctrl.right] = keyboard_check(ord("D"));
global.controls[0, ctrl.jumpHel] = keyboard_check(ord("W"));
global.controls[0, ctrl.jumpPre] = keyboard_check_pressed(ord("W"));
global.controls[0, ctrl.jumpRel] = keyboard_check_released(ord("W"));
global.controls[0, ctrl.dash] = keyboard_check_pressed(ord("G"));
global.controls[0, ctrl.slide] = keyboard_check(ord("H"));
global.controls[0, ctrl.walk] = keyboard_check(ord("F"));
global.controls[0, ctrl.punch] = keyboard_check(ord("E"));
global.controls[0, ctrl.dive] = keyboard_check_pressed(ord("S"));
global.controls[0, ctrl.swing] = mouse_check_button_pressed(mb_left);

//player 2
if (players >= 2) {
	global.controls[1, ctrl.left] = keyboard_check(vk_left);
	global.controls[1, ctrl.right] = keyboard_check(vk_right);
	global.controls[1, ctrl.jumpHel] = keyboard_check(vk_up);
	global.controls[1, ctrl.jumpPre] = keyboard_check_pressed(vk_up);
	global.controls[1, ctrl.jumpRel] = keyboard_check_released(vk_up);
	global.controls[1, ctrl.walk] = keyboard_check(ord("I"));
}