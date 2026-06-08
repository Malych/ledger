# Merchant's Ledger

A Minecraft Java Edition datapack. Copy a villager's trades from one villager to another using a magic book.

## Installation

Copy `ledger.zip` into your world's `datapacks` folder, then run `/reload`.

## Crafting

Surround a Book with eight Emeralds in a crafting table (book in center).

```
EEE
EBE
EEE
```

## Use

Hold the **Merchant's Ledger** in your main hand and right-click a villager to open their trade dialog.

1. **Record trades** — With a ledger, open a villager's trades. Their `Offers`, profession, and level are written to the book immediately. A sealed (i.e. renamed) ledger cannot be written.
2. **Inscribe trades** — With a charged ledger, right-click a villager who has **no existing trades** (including unemployed villagers who have no trade menu). The stored trades are copied onto them.

The source villager is unchanged. The ledger stays charged and can inscribe the same trades onto multiple villagers.

The target villager keeps their biome outfit. Profession, level, trade list, and discounts (cured-villager pricing and per-trade price adjustments) are copied from the source. Villagers who already have trades or were previously inscribed cannot receive trades again.

## Write protection

Rename the ledger in an anvil to seal it. A sealed ledger can still inscribe recorded trades, but cannot record new ones (`Ledger is sealed`). Remove the anvil name to unlock recording again.

## Notes

- Villagers only (not zombie villagers or wandering traders).
- The ledger appears as an enchanted book with a glint.
- Recorded trade data is stored in the world save, keyed by an internal id on the book. Trading the book to another player works as expected.