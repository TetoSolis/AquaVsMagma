execute store result score x coordinatesRed at @a[gamemode=adventure,team=red] run data get entity @a[gamemode=adventure,team=red,limit=1] Pos[0]
execute store result score y coordinatesRed at @a[gamemode=adventure,team=red] run data get entity @a[gamemode=adventure,team=red,limit=1] Pos[1]
execute store result score z coordinatesRed at @a[gamemode=adventure,team=red] run data get entity @a[gamemode=adventure,team=red,limit=1] Pos[2]
scoreboard players operation x compassMagma = x coordinatesRedstone
scoreboard players operation y compassMagma = y coordinatesRedstone
scoreboard players operation z compassMagma = z coordinatesRedstone
scoreboard players operation x compassMagma -= x coordinatesRed
scoreboard players operation y compassMagma -= y coordinatesRed
scoreboard players operation z compassMagma -= z coordinatesRed
execute if score a win matches 0 run schedule function partie:redstoneradarred 1s
