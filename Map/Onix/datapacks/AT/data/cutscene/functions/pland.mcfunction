kill @e[tag=aqua]
kill @e[tag=magma]
tp @a[team=blue] 851 105 151 -134 34
tp @a[team=red] 851 105 151 -134 34
summon armor_stand 851 105 151 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["aqua"],Rotation:[-134F,34F]}
summon armor_stand 851 105 151 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["magma"],Rotation:[-134F,34F]}
title @a actionbar [{"text":"aaa","color":"green","bold":true,"obfuscated":true},{"text":"Le bloc se trouve au coeur de ce Volcan.","color":"white","bold":true,"obfuscated":false},{"text":"aaa","color":"green","bold":true,"obfuscated":true}]
schedule function cutscene:plane 7s