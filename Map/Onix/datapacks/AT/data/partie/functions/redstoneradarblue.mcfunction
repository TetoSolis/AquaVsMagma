execute store result score x coordinatesBlue at @a[gamemode=adventure,team=blue] run data get entity @a[gamemode=adventure,team=blue,limit=1] Pos[0]
execute store result score y coordinatesBlue at @a[gamemode=adventure,team=blue] run data get entity @a[gamemode=adventure,team=blue,limit=1] Pos[1]
execute store result score z coordinatesBlue at @a[gamemode=adventure,team=blue] run data get entity @a[gamemode=adventure,team=blue,limit=1] Pos[2]
scoreboard players operation x compassAqua = x coordinatesRedstone
scoreboard players operation y compassAqua = y coordinatesRedstone
scoreboard players operation z compassAqua = z coordinatesRedstone
scoreboard players operation x compassAqua -= x coordinatesBlue
scoreboard players operation y compassAqua -= y coordinatesBlue
scoreboard players operation z compassAqua -= z coordinatesBlue
execute if score a win matches 0 run schedule function partie:redstoneradarblue 1s
