

execute as @a store result score @s luck run random value 0..100

execute as @a run title @s title [{"score":{"name":"@s","objective":"luck"},"color":"green"},{"text":"%","color":"green"}]

execute as @a run scoreboard players add @s randtimer 1
execute as @a[scores={randtimer=..78}] at @a[scores={randtimer=..78}] run playsound ui.button.click master
execute as @a[scores={randtimer=..20}] run schedule function lotd:roll 1t
execute as @a[scores={randtimer=21..40}] run schedule function lotd:roll 2t
execute as @a[scores={randtimer=41..60}] run schedule function lotd:roll 3t
execute as @a[scores={randtimer=61..70}] run schedule function lotd:roll 5t
execute as @a[scores={randtimer=71..75}] run schedule function lotd:roll 10t
execute as @a[scores={randtimer=76..78}] run schedule function lotd:roll 20t
execute as @a[scores={randtimer=79}] run function lotd:setluck