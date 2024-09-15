# All scoreboards
scoreboard objectives add voidsent_selected dummy
scoreboard objectives add voidsent_node dummy
scoreboard objectives add NodeX dummy
scoreboard objectives add NodeY dummy
scoreboard objectives add NodeZ dummy
scoreboard objectives add PortalMarkers dummy

# Load dimension
execute in voidsent:void run forceload add -2 -2 1 1
execute in voidsent:void unless entity @e[tag=voidsent_main] run summon armor_stand 0 51 0 {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["voidsent_main"],Passengers:[{id:"minecraft:item_display",Rotation:[0F,90F],Tags:["voidsent_platform"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.75f,0f],scale:[53f,53f,1f]},item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_model_data":1,"minecraft:enchantment_glint_override":true}}}]}
execute in voidsent:void unless entity @e[tag=voidsent_exit] run summon armor_stand 0 51 15 {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["voidsent_exit"],Passengers:[{id:"minecraft:text_display",billboard:"vertical",see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"dark_purple","text":"EXIT","underlined":true}'}]}
execute in voidsent:void run fill -16 50 17 18 50 -17 minecraft:barrier
execute in voidsent:void as @n[tag=voidsent_exit] run power grant @s voidsent:dimension/exit