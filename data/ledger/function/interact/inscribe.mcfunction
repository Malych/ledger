execute if entity @e[type=minecraft:villager, tag=ledger.target, limit=1, predicate=ledger:profession_nitwit] run tellraw @s {"text":"Cannot inscribe a nitwit","color":"gray","italic":true}
execute if entity @e[type=minecraft:villager, tag=ledger.target, limit=1, predicate=ledger:profession_nitwit] run tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target
execute if entity @e[type=minecraft:villager, tag=ledger.target, limit=1, predicate=ledger:profession_nitwit] run return 0

function ledger:interact/is_charged
execute store result storage ledger:paste id int 1 run scoreboard players get #book_id ledger
function ledger:interact/check_stored
execute unless score #tmp ledger matches 1.. run tellraw @s {"text":"No trades on this ledger — open a villager's trades to record first","color":"gray","italic":true}
execute unless score #tmp ledger matches 1.. run tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target
execute unless score #tmp ledger matches 1.. run return 0

tag @s add ledger.await_result
execute as @e[type=minecraft:villager, tag=ledger.target, limit=1] run tag @s add ledger.pending
execute as @e[type=minecraft:villager, tag=ledger.target, limit=1] run function ledger:paste/apply
tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target