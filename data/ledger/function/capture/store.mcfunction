data modify storage ledger:stage Offers set from entity @s Offers
data modify storage ledger:stage Offers.Recipes set from entity @s Offers.Recipes
data modify storage ledger:stage VillagerData.profession set from entity @s VillagerData.profession
execute store result storage ledger:stage VillagerData.level int 1 run data get entity @s VillagerData.level
data modify storage ledger:stage Xp set from entity @s Xp
data modify storage ledger:stage Gossips set from entity @s Gossips
data modify storage ledger:stage LastGossipDecay set from entity @s LastGossipDecay
function ledger:capture/commit