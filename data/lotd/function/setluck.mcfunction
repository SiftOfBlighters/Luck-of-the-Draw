# generate number 1 to 6 
# 1 = 0%, 2 = 20%, 3 = 40%, 4 = 60%, 5 = 80%, 6 = 100%
execute as @a at @a run playsound block.note_block.bell player @s

execute as @a store result score @s luck run random value 1..6

execute as @a[scores={luck=1}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={luck=1}] run title @s title [{"text":"0%", "color":"gold","bold":true}]

execute as @a[scores={luck=2}] run attribute @s minecraft:generic.max_health base set 22
execute as @a[scores={luck=2}] run title @s title [{"text":"20%", "color":"gold","bold":true}]

execute as @a[scores={luck=3}] run attribute @s minecraft:generic.max_health base set 24
execute as @a[scores={luck=3}] run title @s title [{"text":"40%", "color":"green","bold":true}]

execute as @a[scores={luck=4}] run attribute @s minecraft:generic.max_health base set 26
execute as @a[scores={luck=4}] run title @s title [{"text":"60%", "color":"green","bold":true}]

execute as @a[scores={luck=5}] run attribute @s minecraft:generic.max_health base set 28
execute as @a[scores={luck=5}] run title @s title [{"text":"80%", "color":"dark_green","bold":true}]

execute as @a[scores={luck=6}] run attribute @s minecraft:generic.max_health base set 30
execute as @a[scores={luck=6}] run title @s title [{"text":"100%", "color":"dark_green","bold":true}]