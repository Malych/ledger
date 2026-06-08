execute if score @s ledger_ray matches ..0 run return 0
scoreboard players remove @s ledger_ray 1
execute as @e[type=minecraft:villager, distance=..1.25, sort=nearest, limit=1] run tag @s add ledger.target
execute if entity @e[type=minecraft:villager, tag=ledger.target] run return 0
execute unless block ~ ~ ~ #minecraft:replaceable run return 0
execute positioned ^ ^ ^0.25 run function ledger:ray/step