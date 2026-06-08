execute as @a if score @s ledger_talk > @s ledger_talk_prev unless entity @s[tag=ledger.handled] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:item_name={"text":"Merchant's Ledger","italic":false}] at @s run function ledger:interact/dispatch
execute as @a if score @s ledger_talk > @s ledger_talk_prev unless entity @s[tag=ledger.handled] unless items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:item_name={"text":"Merchant's Ledger","italic":false}] if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{merchants_ledger:1b}] at @s run function ledger:interact/dispatch

scoreboard players operation @a ledger_talk_prev = @a ledger_talk
tag @a remove ledger.processed
tag @a remove ledger.handled