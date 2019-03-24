leftKey = keyboard_check(ord("A"));
rightKey = keyboard_check(ord("D"));

runKey = keyboard_check(ord("J"));
jumpPressed = keyboard_check_pressed(ord("W"));
jumpHeld = keyboard_check(ord("W"));
jumpReleased = keyboard_check_released(ord("W"));

dashKey = keyboard_check_pressed(ord("K"));

#region PREVIOUS SCRIPT
// were only checking for the keys themselves that are pressed, held, or released.
// move is not an input itself; it contains a value from two inputs that we use to
// tell which way to move the player.
// yes, it's nitpicking slightly, but since we are using it to store a value between two 
// numbers, it's better used in the create event for the player.

//move = rightKey - leftKey;
#endregion