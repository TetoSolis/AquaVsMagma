execute store result score x coordinates run random roll 0..43
execute store result score y coordinates run random roll 0..17
execute store result score z coordinates run random roll 0..46
summon armor_stand 893 49 54 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["diamond"]}
function partie:diamondplace
schedule function partie:start 10s