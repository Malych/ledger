execute as @e[type=minecraft:villager, distance=..5, sort=nearest] if data entity @s Offers.Recipes[0] run tag @s add ledger.candidate
execute as @e[type=minecraft:villager, tag=ledger.candidate, sort=nearest, limit=1] run tag @s add ledger.target
tag @e[type=minecraft:villager, tag=ledger.candidate] remove ledger.candidate