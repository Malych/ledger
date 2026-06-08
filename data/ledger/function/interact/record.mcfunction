scoreboard players set #tmp ledger 0

execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_name] run tellraw @s {"text":"Ledger is sealed","color":"gray","italic":true}
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_name] run tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[custom_name] run return 0

execute unless entity @e[type=minecraft:villager, tag=ledger.target] run tellraw @s {"text":"No villager in range","color":"gray","italic":true}
execute unless entity @e[type=minecraft:villager, tag=ledger.target] run return 0

execute as @e[type=minecraft:villager, tag=ledger.target, limit=1, sort=nearest] run function ledger:interact/has_trades
execute unless score #tmp ledger matches 1.. run tellraw @s {"text":"No trades to record — open a villager's trade menu","color":"gray","italic":true}
execute unless score #tmp ledger matches 1.. run tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target
execute unless score #tmp ledger matches 1.. run return 0

function ledger:interact/read_book_id
execute if score #book_id ledger matches 0 run scoreboard players add #seq ledger 1
execute if score #book_id ledger matches 0 run scoreboard players operation #book_id ledger = #seq ledger
execute store result storage ledger:temp book_id int 1 run scoreboard players get #book_id ledger
execute as @e[type=minecraft:villager, tag=ledger.target, limit=1, sort=nearest] run function ledger:capture/from_villager
tag @e[type=minecraft:villager, tag=ledger.target] remove ledger.target
function ledger:interact/check_stored
execute unless score #tmp ledger matches 1.. run tellraw @s {"text":"Trades failed to save","color":"red"}
execute unless score #tmp ledger matches 1.. run return 0
function ledger:capture/finish