///steps
if step<maxstep
{
 step+=global.f_attackspeed
}
 else
{
 step=0
 state=0
 if obj_player.state=1 {obj_player.state=0}
}


