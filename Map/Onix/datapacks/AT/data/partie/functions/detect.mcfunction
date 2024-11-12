scale reset @p[x=52,y=57,z=12,distance=..2,team=]
tellraw @p[x=52,y=57,z=12,distance=..2,team=] [{"text":"Bienvenue dans la Team "},{"text":"[","color":"dark_blue","bold":true},{"text":"Aqua","color":"#075191","bold":true},{"text":"]","color":"dark_blue","bold":true},{"text":" !","bold":true}]
execute as @p[x=52,y=57,z=12,distance=..2,team=] run team join blue

scoreboard players set @a[x=59, y=60, z=56, distance=..2] bluerole 2
scoreboard players set @a[x=45, y=60, z=56, distance=..2] bluerole 1
execute as @a[x=59, y=60, z=56, distance=2..,team=blue] as @s[x=45, y=60, z=56, distance=2..] run scoreboard players reset @s bluerole

scale reset @p[x=-55,y=57,z=27,distance=..2,team=]
tellraw @p[x=-55,y=57,z=27,distance=..2,team=] [{"text":"Bienvenue dans la Team "},{"text":"[","color":"dark_red","bold":true},{"text":"Magma","color":"gold","bold":true},{"text":"]","color":"dark_red","bold":true},{"text":" !","bold":true}]
execute as @p[x=-55,y=57,z=27,distance=..2,team=] run team join red

scoreboard players set @a[x=-48, y=60, z=71, distance=..2] redrole 2
scoreboard players set @a[x=-62, y=60, z=71, distance=..2] redrole 1
execute as @a[x=-48, y=60, z=71, distance=2..,team=red] as @s[x=-62, y=60, z=71, distance=2..] run scoreboard players reset @s redrole

execute if entity @a[team=blue, scores={bluerole=1}] if entity @a[team=blue, scores={bluerole=2}] if entity @a[team=red, scores={redrole=1}] if entity @a[team=red, scores={redrole=2}] run scoreboard players set start partyBegin 1
execute if entity @a[team=blue, scores={bluerole=1}] if entity @a[team=blue, scores={bluerole=2}] if entity @a[team=red, scores={redrole=1}] if entity @a[team=red, scores={redrole=2}] run function partie:saverole
execute if entity @a[team=blue, scores={bluerole=1}] if entity @a[team=blue, scores={bluerole=2}] if entity @a[team=red, scores={redrole=1}] if entity @a[team=red, scores={redrole=2}] run schedule function cutscene:intro 1s