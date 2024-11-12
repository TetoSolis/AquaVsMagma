kill @e[type=minecraft:armor_stand,tag=aqua]
kill @e[type=minecraft:armor_stand,tag=magma]
tp @a[team=red] -1020 -52 44 90 35
tp @a[team=blue] -1017 -52 44 -90 35
summon armor_stand -1020 -52 44 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["magma"],Rotation:[90F,35F]}
summon armor_stand -1017 -52 44 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["aqua"],Rotation:[-90F,35F]}
playsound block.fire.ambient master @a[team=blue]
playsound minecraft:entity.generic.burn master @a[team=blue]
playsound minecraft:ambient.nether_wastes.mood master @a
title @a[team=blue] title [{"text":"aaa","color":"dark_red","bold":true,"obfuscated":true},{"text":"Team Magma","color":"gold","bold":true,"obfuscated":false},{"text":"aaa","bold":true,"obfuscated":true}]
title @a[team=blue] actionbar {"text":"Tuez la Team Magma pour protéger le monde!!!","bold":true} 
playsound minecraft:ambient.underwater.enter master @a[team=red]
title @a[team=red] title [{"text":"aaa","color":"dark_blue","bold":true,"obfuscated":true},{"text":"Team Aqua","color":"aqua","bold":true,"obfuscated":false},{"text":"aaa","bold":true,"obfuscated":true}]
title @a[team=red] actionbar {"text":"Tuez la Team Aqua pour protéger le monde!!!","bold":true} 
schedule function cutscene:planc 7s