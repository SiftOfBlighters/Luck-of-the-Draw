
execute as @a[scores={isRolling=1}] store result score @s luck run random value 0..100

execute as @a[scores={isRolling=1}] run title @s title [{"score":{"name":"@s","objective":"luck"},"color":"green"},{"text":"%","color":"green"}]

execute as @a[scores={isRolling=1}] run scoreboard players add @s randtimer 1
execute as @a[scores={randtimer=..78, isRolling=1}] at @a[scores={randtimer=..78, isRolling=1}] run playsound ui.button.click master
execute as @a[scores={randtimer=..20, isRolling=1}] run schedule function lotd:rollondeath 1t
execute as @a[scores={randtimer=21..40, isRolling=1}] run schedule function lotd:rollondeath 2t
execute as @a[scores={randtimer=41..60, isRolling=1}] run schedule function lotd:rollondeath 3t
execute as @a[scores={randtimer=61..70, isRolling=1}] run schedule function lotd:rollondeath 5t
execute as @a[scores={randtimer=71..75, isRolling=1}] run schedule function lotd:rollondeath 10t
execute as @a[scores={randtimer=76..78, isRolling=1}] run schedule function lotd:rollondeath 20t
execute as @a[scores={randtimer=79, isRolling=1}] run function lotd:setluckondeath