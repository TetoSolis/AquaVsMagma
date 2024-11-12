teleport @a[team=blue] @e[tag=aqua,limit=1]
teleport @a[team=red] @e[tag=magma,limit=1]
execute if score a tpActive matches 1 run schedule function cutscene:tploop 5t