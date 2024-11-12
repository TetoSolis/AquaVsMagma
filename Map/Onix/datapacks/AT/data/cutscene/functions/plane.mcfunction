#831 56.00 219 180 90
kill @e[tag=aqua]
kill @e[tag=magma]
tp @a[team=blue] 831 56 219 180 90
tp @a[team=red] 795 56 172 -90 90
summon armor_stand 831 56 219 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["aqua"],Rotation:[180F,90F]}
summon armor_stand 795 56 172 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["magma"],Rotation:[-90F,90F]}
gamemode adventure @a[scores={blueRole=1}]
gamemode adventure @a[scores={redRole=1}]
effect give @a blindness 10 1 false
effect give @a slowness 10 50 false
scoreboard players set a tpActive 0
teleport @a[team=blue] @e[tag=aqua,limit=1]
teleport @a[team=red] @e[tag=magma,limit=1]
kill @e[tag=aqua]
kill @e[tag=magma]
tellraw @a[team=blue] {"text":"La team Aqua devra défendre le bloc de redstone jusqu'a la fin du timer afin de remporter la partie. Pour cela l'un des joueurs pourra intergarir directement dans le jeu et son coéquipier sera en spectateur équiper d'un gant qui lui permmetra de lancer des pouvoirs pouvant aider ses allier ou gener ses adversaires.","color":"white","bold":true}
tellraw @a[team=red] {"text":"La team Magma devra trouver et détruire le bloc de redstone avant la fin du timer afin de remporter la partie. Pour cela l'un des joueurs pourra intergarir directement dans le jeu et son coéquipier sera en spectateur équiper d'un gant qui lui permmetra de lancer des pouvoirs pouvant aider ses allier ou gener ses adversaires.","color":"white","bold":true}
scoreboard players set x coordinates 910
scoreboard players set y coordinates 73
scoreboard players set z coordinates 82

setblock 910 73 82 minecraft:redstone_block
#function partie:diamondplace

setblock 910 73 81 minecraft:tinted_glass
setblock 911 73 81 minecraft:tinted_glass
setblock 911 73 82 minecraft:tinted_glass
setblock 911 73 83 minecraft:tinted_glass
setblock 910 73 83 minecraft:tinted_glass
setblock 909 73 83 minecraft:tinted_glass
setblock 909 73 82 minecraft:tinted_glass
setblock 909 73 81 minecraft:tinted_glass
setblock 909 73 80 minecraft:tinted_glass
setblock 910 73 80 minecraft:tinted_glass
setblock 911 73 80 minecraft:tinted_glass
setblock 912 73 81 minecraft:tinted_glass
setblock 912 73 82 minecraft:tinted_glass
setblock 912 73 83 minecraft:tinted_glass
setblock 911 73 84 minecraft:tinted_glass
setblock 910 73 84 minecraft:tinted_glass
setblock 909 73 84 minecraft:tinted_glass
setblock 908 73 83 minecraft:tinted_glass
setblock 908 73 82 minecraft:tinted_glass
setblock 908 73 81 minecraft:tinted_glass

setblock 910 74 81 minecraft:tinted_glass
setblock 911 74 81 minecraft:tinted_glass
setblock 911 74 82 minecraft:tinted_glass
setblock 911 74 83 minecraft:tinted_glass
setblock 910 74 83 minecraft:tinted_glass
setblock 909 74 83 minecraft:tinted_glass
setblock 909 74 82 minecraft:tinted_glass
setblock 909 74 81 minecraft:tinted_glass
setblock 909 74 80 minecraft:tinted_glass
setblock 910 74 80 minecraft:tinted_glass
setblock 911 74 80 minecraft:tinted_glass
setblock 912 74 81 minecraft:tinted_glass
setblock 912 74 82 minecraft:tinted_glass
setblock 912 74 83 minecraft:tinted_glass
setblock 911 74 84 minecraft:tinted_glass
setblock 910 74 84 minecraft:tinted_glass
setblock 909 74 84 minecraft:tinted_glass
setblock 908 74 83 minecraft:tinted_glass
setblock 908 74 82 minecraft:tinted_glass
setblock 908 74 81 minecraft:tinted_glass

setblock 910 75 81 minecraft:tinted_glass
setblock 911 75 81 minecraft:tinted_glass
setblock 911 75 82 minecraft:tinted_glass
setblock 911 75 83 minecraft:tinted_glass
setblock 910 75 83 minecraft:tinted_glass
setblock 909 75 83 minecraft:tinted_glass
setblock 909 75 82 minecraft:tinted_glass
setblock 909 75 81 minecraft:tinted_glass
setblock 910 74 82 minecraft:tinted_glass
setblock 910 75 82 minecraft:tinted_glass
schedule function partie:detect 10s
schedule function partie:start 10s