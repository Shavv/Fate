///player_move(direction,pixels)
hspd =(argument0*argument1)
repeat(abs(hspd)) // same as the vspd, we want to check for a collision at every pixel we move
{
    if !place_meeting(x+sign(hspd),y,obj_block) // if there is no block to our left or right
    {
        x += sign(hspd); // add to our x value depending on which way we are going
    }
}
