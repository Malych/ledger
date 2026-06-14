execute as @a[tag=ledger.await_result, limit=1] at @s run execute as @e[type=minecraft:villager, tag=ledger.pending, distance=..12, limit=1, sort=nearest] run function ledger:paste/reapply
execute as @a[tag=ledger.await_result, limit=1] at @s run execute as @e[type=minecraft:villager, tag=ledger.pending, distance=..12, limit=1, sort=nearest] run function ledger:paste/reapply

scoreboard players set #tmp ledger 0
execute as @a[tag=ledger.await_result, limit=1] at @s run execute as @e[type=minecraft:villager, tag=ledger.pending, distance=..12, limit=1, sort=nearest] store result score #tmp ledger run data get entity @s Offers.Recipes

execute if score #tmp ledger matches 1.. as @a[tag=ledger.await_result, limit=1] run playsound minecraft:entity.villager.trade player @s ~ ~ ~ 1 1
execute if score #tmp ledger matches 1.. as @a[tag=ledger.await_result, limit=1] run tellraw @s {"text":"Trades inscribed","color":"gray","italic":true}
execute unless score #tmp ledger matches 1.. as @a[tag=ledger.await_result, limit=1] run tellraw @s {"text":"Trades did not stick","color":"gray","italic":true}

tag @e[type=minecraft:villager, tag=ledger.pending] remove ledger.pending
tag @a[tag=ledger.await_result] remove ledger.await_result