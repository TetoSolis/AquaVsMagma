#execute if score start partyBegin matches 0 run say wallnut
execute if score @a[team=red,limit=1,gamemode=adventure] redstoneMined matches 1.. run scoreboard players set a win 1
execute if score a win matches 1 run function partie:end