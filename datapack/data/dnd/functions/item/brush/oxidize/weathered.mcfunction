####################
# Increases the oxidization
####################

## Oxidize by a level
# Set level to 2
data modify storage dnd:storage root.temp.item.tag.dnd.level set value 2
data modify storage dnd:storage root.temp.item.tag.dnd.uses set value 0
# Replace CMD
data modify storage dnd:storage root.temp.item.tag.CustomModelData set value 400006
# Replace item name
data modify storage dnd:storage root.temp.item.tag.display.Name set value '{"italic":false,"translate":"item.dnd.weathered_brush"}'

## Set Data back to item
item modify entity @s weapon.mainhand dnd:copy_nbt
