execute if entity @e[type=minecraft:villager, tag=ledger.target] run return 0
tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target

execute if function ledger:interact/is_charged as @e[type=minecraft:villager, distance=..5, sort=nearest, limit=1] run tag @s add ledger.target
execute unless function ledger:interact/is_charged run function ledger:interact/target_record

execute unless entity @e[type=minecraft:villager, tag=ledger.target] run function ledger:ray/villager
execute unless entity @e[type=minecraft:villager, tag=ledger.target] as @e[type=minecraft:villager, distance=..5, sort=nearest, limit=1] run tag @s add ledger.target