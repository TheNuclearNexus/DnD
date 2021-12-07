####################
# Uninstall
####################

## Remove Scoreboards
scoreboard objectives remove dnd.config
scoreboard objectives remove dnd.dummy
scoreboard objectives remove dnd.math
scoreboard objectives remove dnd.timer
scoreboard objectives remove dnd.carrot_on_a_stick
scoreboard objectives remove dnd.mine_sand
scoreboard objectives remove dnd.mine_red_sand
scoreboard objectives remove dnd.fossil_preservation

## Kill Mobs
execute at @e[tag=dnd.block] run setblock ~ ~ ~ air
tp @e[tag=dnd.entity] ~ ~-666 ~

## Team
team remove global.antivil

## Uninstall Message
tellraw @a [{"translate":"pack.dnd.uninstall","color":"red"}]

## Disable Datapack
datapack disable "file/DnDv1.1.0Datapack.zip"
datapack disable "file/DNDv1.1.0Datapack"
