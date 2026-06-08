tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target
execute as @e[type=minecraft:villager, distance=..3, sort=nearest, limit=1] if entity @s[predicate=ledger:profession_employed] run tag @s add ledger.target
execute unless entity @e[type=minecraft:villager, tag=ledger.target] run function ledger:ray/villager
execute unless entity @e[type=minecraft:villager, tag=ledger.target] as @e[type=minecraft:villager, distance=..3, sort=nearest, limit=1] run tag @s add ledger.target