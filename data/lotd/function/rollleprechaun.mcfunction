execute as @a[scores={randtimer=79}] run title @s title [{"text":"You Are...", "color":"yellow"}]
execute as @r[scores={randtimer=80}, limit=1] run scoreboard players set @s isLeprechaun 1

execute as @a[scores={randtimer=80, isLeprechaun=1}] run title @s title [{"text":"The Leprechaun", "color":"gold"}]
execute as @a[scores={randtimer=80, isLeprechaun=1}] at @a[scores={randtimer=80, isLeprechaun=1}] run playsound entity.wither.spawn master @s ~ ~ ~

execute as @a[scores={randtimer=80, isLeprechaun=0}] run title @s title [{"text":"Not The Leprechaun", "color":"green"}]
execute as @a[scores={randtimer=80, isLeprechaun=0}] at @a[scores={randtimer=80, isLeprechaun=0}] run playsound block.note_block.bell master @s ~ ~ ~

execute as @a[scores={randtimer=79}] run schedule function lotd:rollleprechaun 2s
execute as @a[scores={randtimer=79}] run scoreboard players add @s randtimer 1
