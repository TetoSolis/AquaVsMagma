execute if score @a[limit=1] redstoneMined matches 1.. run scoreboard players set a win 1
execute if score @a[limit=1] redstoneMined matches 1.. run scoreboard players reset @a redstoneMined
execute if score t time matches 30 run scoreboard players set a win 1
execute if score t time matches ..29 run scoreboard players add t time 1
execute if score a win matches 1 run gamemode spectator @a
schedule function partie:windetect 10s