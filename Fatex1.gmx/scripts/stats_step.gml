///math on player only stat
global.mhp=(global.sta*5)
global.msp=(global.wis*6)
global.cooldown=100-(global.char/5)
global.attackspeed=1+(global.agi/400)
global.critchance=(global.dex/35)
global.casttime=100-(global.will/5)
global.ad=(global.str/2)
global.ap=(global.int/3)



///math on final
global.f_mhp=global.mhp+(global.i_mhp+global.b_mhp)
global.f_msp=global.msp+(global.i_msp+global.b_msp)
global.f_cooldown=global.cooldown+(global.i_cooldown+global.b_cooldown)
global.f_attackspeed=global.attackspeed+(global.i_attackspeed+global.b_attackspeed)
global.f_critchance=global.critchance+(global.i_critchance+global.b_critchance)
global.f_critmultiplier=(global.i_critchance+global.b_critchance)
global.f_casttime=global.casttime+(global.i_casttime+global.b_casttime)
global.f_agi=(global.i_agi+global.b_agi)
global.f_str=(global.i_str+global.b_str)
global.f_dex=(global.i_dex+global.b_dex)
global.f_sta=(global.i_sta+global.b_sta) 
global.f_wis=(global.i_wis+global.b_wis)
global.f_char=(global.i_char+global.b_char)
global.f_int=(global.i_int+global.b_int)
global.f_will=(global.i_will+global.b_will)
global.f_jump=global.jump+(global.i_jump+global.b_jump)
global.f_mspeed=global.mspeed+(global.i_mspeed+global.b_mspeed)
global.f_ad=global.ad+(global.i_ad+global.b_ad)
global.f_ap=global.ap+(global.i_ap+global.b_ap)
//final








