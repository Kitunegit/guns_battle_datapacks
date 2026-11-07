#> ui:return_item/_
# アイテムを返却

# アイテムをひとつづつstorageに入れて返却
    data modify storage ui: GiveItem set from storage ui: ReturnItems[0]
    execute if data storage ui: GiveItem{Count:0b} run data remove storage ui: GiveItem
    data remove storage ui: ReturnItems[0]
    execute if data storage ui: GiveItem. run function guns_data:ui/return/give

# 返却するアイテムが無くなるまで続ける
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function guns_data:ui/return/_