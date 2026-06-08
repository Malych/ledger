advancement revoke @s only ledger:interacted_villager
execute if entity @s[tag=ledger.processed] run return 0
execute unless items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:item_name={"text":"Merchant's Ledger","italic":false}] run return 0
execute unless function ledger:interact/is_charged run return 0

tag @s add ledger.processed
tag @s add ledger.handled
function ledger:ray/villager
execute unless entity @e[type=minecraft:villager, tag=ledger.target] run function ledger:interact/target_resolve
execute unless entity @e[type=minecraft:villager, tag=ledger.target] run tellraw @s {"text":"No villager found","color":"gray","italic":true}
execute unless entity @e[type=minecraft:villager, tag=ledger.target] run return 0
function ledger:interact/route