///platform movement
if !place_meeting(x,y+1,obj_block) && (!place_meeting(x,y+1,obj_jumpthru) or place_meeting(x,y,obj_jumpthru)) && !place_meeting(x,y,obj_ladder) // if we are in the air
{
    grav = .2; // set the gravity to .5
    vspd += grav; // add .5 to our vspd once every step
}
else // else if we are on the ground
{
    grav = 0; // set the gravity to 0
    vspd = 0; // set vspd to 0 to stop moving    
}

repeat(abs(vspd)) // we want to check for a collision every pixel, so we use a repeat() function to check every pixel while falling
{
    if sign(vspd) < 0
    {
        if !place_meeting(x,y-1,obj_block)
        {
            y += sign(vspd);
        }
        else
        {
            vspd = 0;
        }
    }
    else 
    {
        if !place_meeting(x,y+1,obj_block) && (!place_meeting(x,y+1,obj_jumpthru) or place_meeting(x,y,obj_jumpthru))
        {
            y += sign(vspd);
        }
    }            
}
if keyboard_check(global.key_left)
{
 look=-1
}
if keyboard_check(global.key_right)
{
 look=1
}
if grav!=0
{
 sprite_index=spr_player_jump
}
 else
{
 sprite_index=spr_player
}

image_xscale=look


































