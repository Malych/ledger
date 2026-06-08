tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target
scoreboard players set @s ledger_ray 24
execute anchored eyes positioned ^ ^ ^0.25 run function ledger:ray/step