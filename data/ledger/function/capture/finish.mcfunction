scoreboard players operation #expected ledger = #book_id ledger
execute store result storage ledger:temp book_id int 1 run scoreboard players get #book_id ledger
function ledger:capture/update_book with storage ledger:temp
function ledger:interact/read_book_id
execute unless score #book_id ledger matches 1.. if score #expected ledger matches 1.. run scoreboard players operation #book_id ledger = #expected ledger
execute unless score #book_id ledger matches 1.. run tellraw @s {"text":"Ledger failed to update — try again","color":"red"}
execute if score #book_id ledger matches 1.. run tellraw @s {"text":"Trades recorded","color":"gray","italic":true}