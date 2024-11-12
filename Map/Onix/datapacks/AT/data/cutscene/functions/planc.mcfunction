kill @e[tag=aqua]
kill @e[tag=magma]
tp @a[team=blue] -1000 -54 10 47 21
tp @a[team=red] -1000 -54 10 47 21
summon armor_stand -1000 -54 10 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["aqua"],Rotation:[47F,21F]}
summon armor_stand -1000 -54 10 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["magma"],Rotation:[47F,21F]}
title @a[team=red] actionbar [{"text":"aaa","color":"aqua","bold":true,"obfuscated":true},{"text":"Votre Objectif : Trouver ce block et le casser.","color":"gold","bold":true,"obfuscated":false},{"text":"aaa","color":"aqua","bold":true,"obfuscated":true}]
title @a[team=red] actionbar [{"text":"aaa","color":"gold","bold":true,"obfuscated":true},{"text":"Votre Objectif : Trouver ce block et le protéger.","color":"aqua","bold":true,"obfuscated":false},{"text":"aaa","color":"gold","bold":true,"obfuscated":true}]
schedule function cutscene:pland 7s