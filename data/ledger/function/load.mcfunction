scoreboard objectives add ledger dummy
scoreboard players set #seq ledger 0
scoreboard players set #book_id ledger 0
scoreboard objectives add ledger_ray dummy
scoreboard objectives add ledger_talk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add ledger_talk_prev dummy
execute as @a run scoreboard players operation @s ledger_talk_prev = @s ledger_talk