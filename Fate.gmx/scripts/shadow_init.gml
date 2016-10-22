///obj player
draw_set_color(c_black)
////////////////////////////////////////
if instance_exists(obj_player)
{
 draw_ellipse(obj_player.x-11,obj_player.y+3,obj_player.x+9,obj_player.y+8,0)
}
////////////////////////////////////////////

/*

var inst=obj_other_player
if instance_number(inst)>0
{
 with(inst)
 {
  if floor(image_index)=0
  {
   draw_ellipse(x-11,y+3,x+10,y+9,0)
  }
  if floor(image_index)=1
  {
   draw_ellipse(x-12,y+3,x+11,y+9,0)
  }
  if floor(image_index)=2
  {
   draw_ellipse(x-13,y+3,x+12,y+9,0)
  }
  if floor(image_index)=3
  {
   draw_ellipse(x-13,y+3,x+12,y+9,0)
  }
  if floor(image_index)=4
  {
   draw_ellipse(x-12,y+3,x+11,y+9,0)
  }
  if floor(image_index)=5
  {
   draw_ellipse(x-11,y+3,x+10,y+9,0)
  }
 }  
}


//firefly
if instance_exists(obj_firefly)
{
 with (obj_firefly)
 {
  draw_ellipse(x-2,y+12,x+2,y+14,0)
 }
}

/////////////////////////////////////////////////////////
//decoration objects
if instance_exists(obj_deco_parent)
{
 with (obj_deco_parent)
 {
  draw_ellipse(x-(sprite_width/2)-2,y-1,x+(sprite_width/2)+1,y+2,0)
 }
}

//critter_frog
if instance_exists(critter_frog)
{
 with (critter_frog)
 {
  draw_ellipse(x-5,y-1,x+5,y+2,0)
 }
}

//oak_tree
if instance_exists(obj_oak_tree)
{
 with (obj_oak_tree)
 {
  if cut=false{draw_ellipse(x-20,y-6,x+20,y+6,0)} else {draw_ellipse(x-15,y-3,x+15,y+3,0)}
 }
}

//Projectiles


///enemies
if instance_exists(mob_trufflin)
{
 with (mob_trufflin)
 {
  draw_ellipse(x-11,y-2,x+10,y+2,0)
 }
}

