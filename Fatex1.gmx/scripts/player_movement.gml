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
    if keyboard_check_pressed(global.key_jump) && !keyboard_check(global.key_down) && !place_meeting(x,y,obj_ladder)  // since we are on the ground, we can handle jumping here, so check if we pressed up
    {
        vspd = -global.f_jump; // set the vspd to -8, which will make us jump
    }
    
}
if ((keyboard_check_released(global.key_jump)&& vspd < 0) and alarm[0]=-1 )// if we released the up button while in the in air
{
    vspd *= .5; // divide our vspd by 2, creating a smooth type of variable jumping
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

hspd = (keyboard_check(global.key_right)-keyboard_check(global.key_left))*global.f_mspeed; //<-- speed
repeat(abs(hspd)) // same as the vspd, we want to check for a collision at every pixel we move
{
    if !place_meeting(x+sign(hspd),y,obj_block) // if there is no block to our left or right
    {
        x += sign(hspd); // add to our x value depending on which way we are going
    }
}

if keyboard_check(global.key_down) && keyboard_check(global.key_jump) && (place_meeting(x,y+1,obj_jumpthru)) && vspd=0 && !place_meeting(x,y,obj_ladder)
{
 if !place_meeting(x,y+1,obj_block) {y+=1}
}

if keyboard_check(global.key_down) && (place_meeting(x,y,obj_ladder) or place_meeting(x,y+1,obj_ladder))
{
 y+=global.mspeed/1.2
}

if (keyboard_check(global.key_up) or keyboard_check(global.key_jump)) && (place_meeting(x,y,obj_ladder))
{
 y-=global.mspeed/1.2
}

///image
if grav!=0
{
 sprite_index=spr_player_jump
}
 else
{
 sprite_index=spr_player
 if hspd=0
 {
  image_speed=0.05
 }
  else
 {
  image_speed=global.mspeed/10
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


image_xscale=look

































