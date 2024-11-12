say <rechargement datapack>
team remove blue
team remove red

team add blue [{"text":"[","color":"dark_blue","bold":true},{"text":"Aqua","color":"#075191","bold":true},{"text":"]","color":"dark_blue","bold":true}]
team add red [{"text":"[","color":"dark_red","bold":true},{"text":"Magma","color":"gold","bold":true},{"text":"]","color":"dark_red","bold":true}]

team modify blue prefix [{"text":"[","color":"dark_blue","bold":true},{"text":"Aqua","color":"#075191","bold":true},{"text":"]","color":"dark_blue","bold":true}]
team modify red prefix [{"text":"[","color":"dark_red","bold":true},{"text":"Magma","color":"gold","bold":true},{"text":"]","color":"dark_red","bold":true}]
team modify red color red
team modify blue color blue

#give TetoSolis crimson_sign{BlockEntityTag:{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":" ","clickEvent":{"action":"run_command","value":"/tellraw @s {\\"text\\":\\"Vous avez quitté la team Magma.\\"}"}}','{"text":"Revenir","clickEvent":{"action":"run_command","value":"/tp 46 60 -343.33"}}','{"text":"en Arrière","clickEvent":{"action":"run_command","value":"/team leave @s"}}','{"text":""}']}}} 1
#give TetoSolis warped_sign{BlockEntityTag:{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":" ","clickEvent":{"action":"run_command","value":"/tellraw @s {\\"text\\":\\"Vous avez quitté la team Aqua.\\"}"}}','{"text":"Revenir","clickEvent":{"action":"run_command","value":"/tp 46 60 -343.33"}}','{"text":"en Arrière","clickEvent":{"action":"run_command","value":"/team leave @s"}}','{"text":""}']}}} 1

scoreboard objectives remove partyBegin
scoreboard objectives add partyBegin dummy
scoreboard players set start partyBegin 0

scoreboard objectives remove bluerole
scoreboard objectives remove blueRole
scoreboard objectives add bluerole dummy
scoreboard objectives add blueRole dummy

scoreboard objectives remove redrole
scoreboard objectives remove redRole
scoreboard objectives add redrole dummy
scoreboard objectives add redRole dummy

scoreboard objectives remove coordinates
scoreboard objectives add coordinates dummy

scoreboard objectives remove coordinatesRedstone
scoreboard objectives add coordinatesRedstone dummy

scoreboard objectives remove coordinatesRed
scoreboard objectives add coordinatesRed dummy

scoreboard objectives remove compassMagma
scoreboard objectives add compassMagma dummy

scoreboard objectives remove coordinatesBlue
scoreboard objectives add coordinatesBlue dummy

scoreboard objectives remove compassAqua
scoreboard objectives add compassAqua dummy

scoreboard objectives remove redstoneMined
scoreboard objectives add redstoneMined minecraft.mined:minecraft.redstone_block

scoreboard objectives remove time
scoreboard objectives add time dummy
scoreboard players set t time 0

scoreboard objectives remove win
scoreboard objectives add win dummy
scoreboard players set a win 0

scoreboard objectives setdisplay sidebar.team.blue compassAqua
scoreboard objectives setdisplay sidebar.team.red compassMagma
title @a times 1s 5s 1s

#//pos1 749,19,255
#//pos2 1032,105,-21
#//replace water,magma_block air