//DEBUG
if (global.debug == true){
  //if the escape key has been pressed between drawing the last frame and drawing the current frame
  if (keyboard_check_pressed(vk_escape)){
    game_end()
  }
}

//TODO: add analogue stick support!
//DIRECT

//UP direct
global.up = (keyboard_check(ord('W'))     || keyboard_check(vk_up)    || gamepad_button_check(0, gp_padu));
//DOWN direct
global.down = (keyboard_check(ord('S'))   || keyboard_check(vk_down)  || gamepad_button_check(0, gp_padd));
//LEFT direct
global.left = (keyboard_check(ord('A'))   || keyboard_check(vk_left)  || gamepad_button_check(0, gp_padl));
//RIGHT direct
global.right = (keyboard_check(ord('D'))  || keyboard_check(vk_right) || gamepad_button_check(0, gp_padr));
//SPACE, Z, 360A direct
global.face0 = (keyboard_check(vk_space) || keyboard_check(ord('Z'))  || gamepad_button_check(0, gp_face1));
//SHIFT, X, 360X direct
global.face1 = (keyboard_check(vk_shift)  || keyboard_check(ord('X')) || gamepad_button_check(0, gp_face3));
//For cancelling out of a menu or something, idk
//Q, C, 360B direct
global.face2 =(keyboard_check(ord('Q'))   || keyboard_check(ord('C')) || gamepad_button_check(0, gp_face2));
//probably unused, but nice to have
//E, V, 360Y direct
global.face3 = (keyboard_check(ord('E'))  || keyboard_check(ord('V')) || gamepad_button_check(0, gp_face4));
//ESC, 360START direct 
global.start = (keyboard_check(vk_escape) || gamepad_button_check(0, gp_start));


//PRESSED POLLING: USEFUL FOR MENUS, ACTIONS THAT DON'T REPEAT EVERY TICK

//UP pressed
global.upPressed = (keyboard_check_pressed(ord('W'))     || keyboard_check_pressed(vk_up)    || gamepad_button_check_pressed(0, gp_padu));
//DOWN pressed
global.downPressed = (keyboard_check_pressed(ord('S'))   || keyboard_check_pressed(vk_down)  || gamepad_button_check_pressed(0, gp_padd));
//LEFT pressed
global.leftPressed = (keyboard_check_pressed(ord('A'))   || keyboard_check_pressed(vk_left)  || gamepad_button_check_pressed(0, gp_padl));
//RIGHT pressed
global.rightPressed = (keyboard_check_pressed(ord('D'))  || keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr));
//SPACE, Z, 360A pressed
global.face0Pressed = (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord('Z'))  || gamepad_button_check_pressed(0, gp_face1));
//SHIFT, X, 360X pressed
global.face1Pressed = (keyboard_check_pressed(vk_shift)  || keyboard_check_pressed(ord('X')) || gamepad_button_check_pressed(0, gp_face3));
//For cancelling out of a menu or something, idk
//Q, C, 360B pressed
global.face2Pressed =(keyboard_check_pressed(ord('Q'))   || keyboard_check_pressed(ord('C')) || gamepad_button_check_pressed(0, gp_face2));
//probably unused, but nice to have
//E, V, 360Y pressed
global.face3Pressed = (keyboard_check_pressed(ord('E'))  || keyboard_check_pressed(ord('V')) || gamepad_button_check_pressed(0, gp_face4));
//ESC, 360START pressed: USEFUL FOR PAUSE!
global.startPressed = (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start));
