execute as @e[type=minecraft:villager, tag=ledger.target, limit=1, sort=nearest] run tag @s add ledger.capture
execute as @e[type=minecraft:villager, tag=ledger.target, limit=1, sort=nearest] run function ledger:interact/has_trades

execute if score #tmp ledger matches 1.. run tag @s add ledger.record_pending
execute if score #tmp ledger matches 1.. run tag @s add ledger.handled
execute if score #tmp ledger matches 1.. run schedule function ledger:interact/record_scheduled 1t
execute if score #tmp ledger matches 1.. run tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target
execute if score #tmp ledger matches 1.. run return 0

execute if function ledger:interact/is_charged run function ledger:interact/inscribe
execute if function ledger:interact/is_charged run tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target
execute if function ledger:interact/is_charged run return 0

execute unless function ledger:interact/is_charged run tellraw @s {"text":"Open a villager's trades to record first","color":"gray","italic":true}
tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target