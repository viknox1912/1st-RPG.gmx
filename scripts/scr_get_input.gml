///scr_get_input
up = keyboard_check(vk_up);
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
down = keyboard_check(vk_down);
dash_key = keyboard_check_pressed(ord("C"));
attack_key = keyboard_check_pressed(ord("X"));
pots_key = keyboard_check_pressed(ord("Z"));
// check for gamepad input
if (gamepad_is_connected(0))
    {
    right = (gamepad_axis_value(0, gp_axislh) >= .5);
    left = (gamepad_axis_value(0, gp_axislh) <= -.5);
    up = (gamepad_axis_value(0, gp_axislv)  <= -.5   );
    down = (gamepad_axis_value(0, gp_axislv) >= .5  );
    }
    
