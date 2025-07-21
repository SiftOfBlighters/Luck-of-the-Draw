execute as @a[scores={hours=0,mins=0,secs=0,ticks=0}, team=!out] run title @a title {"selector":"@s","color":"red","bold":true}
execute as @a[scores={hours=0,mins=0,secs=0,ticks=0}, team=!out] run title @a subtitle "has run out of luck"
execute at @a[scores={hours=0,mins=0,secs=0,ticks=0}, team=!out] run summon lightning_bolt ~ ~ ~
execute at @a[scores={hours=0,mins=0,secs=0,ticks=0}, team=!out] run playsound entity.wither.death master @a ~ ~ ~ 1
execute as @a[scores={hours=..-1}, team=!out] run title @a title {"selector":"@s","color":"red","bold":true}
execute as @a[scores={hours=..-1}, team=!out] run title @a subtitle "has run out of luck"
execute at @a[scores={hours=..-1}, team=!out] run summon lightning_bolt ~ ~ ~
execute at @a[scores={hours=..-1}, team=!out] run playsound entity.wither.death master @a ~ ~ ~ 1
execute as @a[scores={hours=..0, mins=..0, secs=..0, ticks=..0}] run team join out
execute as @a[scores={hours=..-1}] run team join out