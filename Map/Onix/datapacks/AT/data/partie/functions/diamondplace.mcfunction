execute if score x coordinates matches 1.. at @e[tag=diamond,limit=1] run tp @e[tag=diamond] ~1 ~ ~
execute if score y coordinates matches 1.. at @e[tag=diamond,limit=1] run tp @e[tag=diamond] ~ ~1 ~
execute if score z coordinates matches 1.. at @e[tag=diamond,limit=1] run tp @e[tag=diamond] ~ ~ ~1
execute if score x coordinates matches 1.. run scoreboard players remove x coordinates 1
execute if score y coordinates matches 1.. run scoreboard players remove y coordinates 1
execute if score z coordinates matches 1.. run scoreboard players remove z coordinates 1
#execute if score x coordinates matches 1.. run function partie:diamondplace
#execute if score y coordinates matches 1.. run function partie:diamondplace
#execute if score z coordinates matches 1.. run function partie:diamondplace
execute if score x coordinates matches 0 if score y coordinates matches 0 if score z coordinates matches 0 at @e[tag=diamond] run setblock ~ ~ ~ redstone_block
execute store result score x coordinatesRedstone at @e[tag=diamond,limit=1] run data get entity @e[tag=diamond,limit=1] Pos[0]
execute store result score y coordinatesRedstone at @e[tag=diamond,limit=1] run data get entity @e[tag=diamond,limit=1] Pos[1]
execute store result score z coordinatesRedstone at @e[tag=diamond,limit=1] run data get entity @e[tag=diamond,limit=1] Pos[2]
execute if score x coordinates matches 0 if score y coordinates matches 0 if score z coordinates matches 0 as @e[tag=diamond] run kill @e[tag=diamond]
execute if score x coordinates matches 0 if score y coordinates matches 0 if score z coordinates matches 0 run function partie:redstoneradarred
execute if score x coordinates matches 0 if score y coordinates matches 0 if score z coordinates matches 0 run function partie:redstoneradarblue
execute if score x coordinates matches 0 if score y coordinates matches 0 if score z coordinates matches 0 run function partie:windetect