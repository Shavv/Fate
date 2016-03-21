//maxsteps
maxstep=40
//body lynx
if step=0
{
 obj_player.state=1
 state=1
 image_xscale=obj_player.image_xscale
 image_yscale=1
 image_angle=0
}


if step>0
{
 y=obj_player.y+3
 x=obj_player.x
 if step<37
 {
  image_angle=(image_xscale*-1)*(step*5)
  with(obj_player)
  {
   player_move(look,global.mspeed/1.5)
  }
 }
}
