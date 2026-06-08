function ledger:interact/read_book_id
execute if score #book_id ledger matches 1.. run return 1
return 0