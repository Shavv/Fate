//Check for gamepad input
if (gamepad_is_connected(0))
    {
    global.key_up = gamepad_axis_value(0,gp_axislv) <= -0.5
    global.key_down = gamepad_axis_value(0,gp_axislv) >= 0.5
    global.key_left = gamepad_axis_value(0,gp_axislh) >= 0.5
    global.key_right = gamepad_axis_value(0,gp_axislh) <= -0.5
    global.key_jump = gamepad_button_check(0,gp_face1)
    }
