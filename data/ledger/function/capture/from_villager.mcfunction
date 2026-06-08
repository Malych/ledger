data modify storage ledger:temp profession set from entity @s VillagerData.profession
data modify storage ledger:temp biome_type set from entity @s VillagerData.type
execute store result storage ledger:temp level int 1 run data get entity @s VillagerData.level
data modify storage ledger:temp prof_label set value "Villager"
function ledger:capture/format_profession
function ledger:capture/store