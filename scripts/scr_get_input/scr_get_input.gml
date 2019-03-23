leftKey = keyboard_check(ord("A"));
rightKey = keyboard_check(ord("D"));

runKey = keyboard_check(ord("J"));
jumpPressed = keyboard_check_pressed(ord("W"));
jumpHeld = keyboard_check(ord("W"));
jumpReleased = keyboard_check_released(ord("W"));

dashKey = keyboard_check_pressed(ord("K"));

move = rightKey - leftKey;