#This function runs every tick

execute as @a[scores={deaths=1}] store result score @s timeLost run random value 30..90
execute as @a[scores={deaths=1}] run scoreboard players operation @s mins -= @s timeLost
execute as @a[scores={deaths=1}] run title @s title [{"text":"-","color":"red"},{"score":{"name":"@s", "objective":"timeLost"}, "color":"red"},{"text":" mins","color":"red"}]

execute as @a[scores={deaths=1}] run scoreboard players set @s timeLost 0
execute as @a[scores={deaths=1}] run scoreboard players set @s deaths 0

execute as @a[scores={kills=1}] store result score @s timeGained run random value 15..45
execute as @a[scores={kills=1}] run scoreboard players operation @s mins += @s timeGained
execute as @a[scores={kills=1}] run title @s title [{"text":"+","color":"green"},{"score":{"name":"@s", "objective":"timeGained"}, "color":"green"},{"text":" mins","color":"green"}]
execute as @a[scores={kills=1}] run scoreboard players set @s timeGained 0
execute as @a[scores={kills=1}] run scoreboard players set @s kills 0


execute as @a[scores={hours=..0, mins=..0, secs=..0, ticks=0}] run function namespace:out
execute as @a[scores={hours=..-1}] run function namespace:out
execute as @a[scores={mins=0, secs=0, ticks=0}] run scoreboard players remove @s hours 1
execute as @a[scores={mins=0, secs=0, ticks=0}] run scoreboard players set @s mins 60
execute as @a[scores={mins=..-1}] run scoreboard players remove @s hours 1
execute as @a[scores={mins=..-1}] run scoreboard players add @s mins 60
execute as @a[scores={secs = 0, ticks = 0}] run scoreboard players remove @s mins 1
execute as @a[scores={secs = 0, ticks = 0}] run scoreboard players set @s secs 60
execute as @a[scores={ticks = 0}] run scoreboard players remove @s secs 1
execute as @a[scores={ticks = 0}] run scoreboard players set @s ticks 20

execute as @a[scores={isGameRunning = 1}] run scoreboard players remove @s ticks 1

execute as @a[scores={mins=60..}] run scoreboard players add @s hours 1
execute as @a[scores={mins=60..}] run scoreboard players remove @s mins 60

execute as @a[scores={hours=16..24}] run team join green @s
execute as @a[scores={hours=8..15}] run team join yellow @s
execute as @a[scores={hours=0..7}] run team join red @s




execute as @a[team=green] run title @s actionbar ["",{"score":{"name":"@s", "objective":"hours"}, "color":"green"},{"text":":","color":"green"},{"score":{"name":"@s", "objective":"mins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@s", "objective":"secs"},"color":"green"}]
execute as @a[team=yellow] run title @s actionbar ["",{"score":{"name":"@s", "objective":"hours"}, "color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s", "objective":"mins"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s", "objective":"secs"},"color":"yellow"}]
execute as @a[team=red] run title @s actionbar ["",{"score":{"name":"@s", "objective":"hours"}, "color":"red"},{"text":":","color":"red"},{"score":{"name":"@s", "objective":"mins"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"@s", "objective":"secs"},"color":"red"}]
execute as @a[team=out] run gamemode spectator