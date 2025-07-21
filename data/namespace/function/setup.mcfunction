#timer
scoreboard objectives add ticks dummy
scoreboard objectives add secs dummy
scoreboard objectives add mins dummy
scoreboard objectives add hours dummy
scoreboard objectives add luck dummy
scoreboard objectives add isGameRunning dummy
scoreboard objectives add randtimer dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add timeLost dummy
scoreboard objectives add kills playerKillCount
scoreboard objectives add timeGained dummy

team add green {"text": "Green"}
team add yellow {"text": "Yellow"}
team add red {"text": "Red"}
team add out {"text":"Out"}


scoreboard objectives add luck dummy

execute as @a run scoreboard players set @a hours 23
execute as @a run scoreboard players set @a mins 59
execute as @a run scoreboard players set @a secs 59
execute as @a run scoreboard players set @a ticks 20
execute as @a run scoreboard players set @a luck 0
execute as @a run scoreboard players set @a isGameRunning 0
execute as @a run scoreboard players set @a randtimer 0
execute as @a run scoreboard players set @a deaths 0
execute as @a run scoreboard players set @a timeLost 0
execute as @a run scoreboard players set @a kills 0
execute as @a run scoreboard players set @a timeGained 0
title @a times 0 60 20