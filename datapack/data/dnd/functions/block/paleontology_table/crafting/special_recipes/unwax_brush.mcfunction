####################
# Unwaxes brush in input
####################

data modify storage dnd:storage root.temp.brush_data set from block ~ ~ ~ Items[{tag:{dnd:{id:"brush"}}}]
data modify storage dnd:storage root.temp.brush_data.tag.dnd.waxed set value 0b
execute if data storage dnd:storage root.temp.brush_data.tag.dnd{level:0} run data modify storage dnd:storage root.temp.brush_data.tag.display.Name set value '{"translate":"item.dnd.brush","italic":"false"}'
execute if data storage dnd:storage root.temp.brush_data.tag.dnd{level:1} run data modify storage dnd:storage root.temp.brush_data.tag.display.Name set value '{"translate":"item.dnd.exposed_brush","italic":"false"}'
execute if data storage dnd:storage root.temp.brush_data.tag.dnd{level:2} run data modify storage dnd:storage root.temp.brush_data.tag.display.Name set value '{"translate":"item.dnd.weathered_brush","italic":"false"}'
execute if data storage dnd:storage root.temp.brush_data.tag.dnd{level:3} run data modify storage dnd:storage root.temp.brush_data.tag.display.Name set value '{"translate":"item.dnd.oxidized_brush","italic":"false"}'

loot replace block ~ ~ ~ container.16 loot dnd:items/brush
data modify block ~ ~ ~ Items[{Slot:16b}].tag set from storage dnd:storage root.temp.brush_data.tag
scoreboard players set @s dnd.dummy 1
