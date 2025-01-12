####################
# Global Tick
####################

## Entity Functions
execute as @e[type=#dnd:technical/tick] at @s run function dnd:entity/tick

## Player Tick
execute as @a at @s run function dnd:entity/player/tick/main

## Items
execute as @e[type=item,tag=!smithed.entity,nbt={Item:{tag:{dnd:{spawner:{}}}}}] at @s run function dnd:block/check_spawner_item

## Paleontologist zombie
execute as @e[type=zombie_villager,tag=!dnd.zombified_paleontologist,tag=!smithed.entity] if data entity @s Offers.Recipes[{sell:{tag:{dnd:{}}}}] run function dnd:entity/paleontologist/zombie/set_tags
