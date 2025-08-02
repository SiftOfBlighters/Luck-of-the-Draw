execute as @a run scoreboard players set @a isGameRunning 1

execute as @a run scoreboard players set @a hours 23
execute as @a run scoreboard players set @a mins 59
execute as @a run scoreboard players set @a secs 59
execute as @a run scoreboard players set @a ticks 20

title @a title {"text":"Timer Started","color":"#056608","bold": true}

tellraw @a [{"text":"Leprechaun will be rolled in 5 minutes", "color":"red"}]
execute as @a run schedule function lotd:roll 2s
execute as @a run schedule function lotd:rollleprechaun 300s