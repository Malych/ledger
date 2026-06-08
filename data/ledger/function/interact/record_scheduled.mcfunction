tag @e[type=minecraft:villager, tag=ledger.capture] add ledger.target
execute unless entity @e[type=minecraft:villager, tag=ledger.target] as @a[tag=ledger.record_pending, limit=1] run tellraw @s {"text":"Lost villager lock — try again","color":"gray","italic":true}
execute unless entity @e[type=minecraft:villager, tag=ledger.target] run tag @e[type=minecraft:villager, tag=ledger.capture] remove ledger.capture
execute unless entity @e[type=minecraft:villager, tag=ledger.target] run tag @a remove ledger.record_pending
execute unless entity @e[type=minecraft:villager, tag=ledger.target] run return 0

execute as @a[tag=ledger.record_pending, limit=1] run function ledger:interact/record
tag @e[type=minecraft:villager, tag=ledger.capture] remove ledger.capture
tag @a remove ledger.record_pending