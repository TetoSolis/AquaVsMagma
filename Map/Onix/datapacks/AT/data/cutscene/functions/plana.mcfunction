
tp @a[team=blue] -1020 -52 44 90 35
tp @a[team=red] -1017 -52 44 -90 35
summon armor_stand -1020 -52 44 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["aqua"],Rotation:[90F,35F]}
summon armor_stand -1017 -52 44 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["magma"],Rotation:[-90F,35F]}
playsound block.fire.ambient master @a[team=red]
playsound minecraft:entity.generic.burn master @a[team=red]
playsound minecraft:ambient.nether_wastes.mood master @a
title @a[team=red] title [{"text":"aaa","color":"dark_red","bold":true,"obfuscated":true},{"text":"Team Magma","color":"gold","bold":true,"obfuscated":false},{"text":"aaa","bold":true,"obfuscated":true}]
title @a[team=red] actionbar {"text":"Battez-vous pour la Team Magma!!!","bold":true} 
playsound minecraft:ambient.underwater.enter master @a[team=blue]
title @a[team=blue] title [{"text":"aaa","color":"dark_blue","bold":true,"obfuscated":true},{"text":"Team Aqua","color":"aqua","bold":true,"obfuscated":false},{"text":"aaa","bold":true,"obfuscated":true}]
title @a[team=blue] actionbar {"text":"Protéger la Team Aqua!!!","bold":true} 
schedule function cutscene:planb 7s