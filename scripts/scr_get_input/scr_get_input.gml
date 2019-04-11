leftKey = global.controls[pID, ctrl.left];
rightKey = global.controls[pID, ctrl.right];

walkKey = global.controls[pID, ctrl.walk];
jumpPressed = global.controls[pID, ctrl.jumpPre];
jumpHeld = global.controls[pID, ctrl.jumpHel];
jumpReleased = global.controls[pID, ctrl.jumpRel];

dashKey = global.controls[pID, ctrl.dash];

slideKey = global.controls[pID, ctrl.slide];

punchKey = global.controls[pID, ctrl.punch];

swingKey = global.controls[pID, ctrl.swing];

diveKey = global.controls[pID, ctrl.dive];

#region PREVIOUS SCRIPT
// were only checking for the keys themselves that are pressed, held, or released.
// move is not an input itself; it contains a value from two inputs that we use to
// tell which way to move the player.
// yes, it's nitpicking slightly, but since we are using it to store a value between two 
// numbers, it's better used in the create event for the player.

//move = rightKey - leftKey;
#endregion

