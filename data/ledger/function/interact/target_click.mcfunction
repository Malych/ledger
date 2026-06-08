tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target
execute as @e[type=minecraft:villager, distance=..3, sort=nearest, limit=1] unless data entity @s Offers.Recipes[0] run tag @s add ledger.target
execute if entity @e[type=minecraft:villager, tag=ledger.target] run return 0

function ledger:ray/villager
execute if entity @e[type=minecraft:villager, tag=ledger.target] run return 0

scoreboard players set #count ledger 0
execute as @e[type=minecraft:villager, distance=..2] unless data entity @s Offers.Recipes[0] run scoreboard players add #count ledger 1
execute if score #count ledger matches 1 as @e[type=minecraft:villager, distance=..2, sort=nearest, limit=1] unless data entity @s Offers.Recipes[0] run tag @s add ledger.target