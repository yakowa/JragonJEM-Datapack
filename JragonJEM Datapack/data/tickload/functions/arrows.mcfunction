# Auto Aim arrows #

execute at @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Arrow:1}}}] run data merge entity @e[type=arrow,scores={EF=..2},limit=1,distance=..2] {Tags:["AA"]}
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Arrow:1}}}] run data merge entity @e[type=arrow,scores={EF=..2},limit=1,distance=..2] {Tags:["AA"]}
execute at @e[type=!minecraft:arrow,type=!minecraft:villager,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:painting,type=!minecraft:experience_orb,type=!#minecraft:arrows,type=!minecraft:player] as @e[distance=0..8,type=arrow,tag=!Hit,tag=AA] run tag @s add Detect
execute at @e[type=arrow,tag=Detect,tag=!Hit] as @e[type=arrow,tag=Detect,tag=!Hit] run tp @s @e[type=!#minecraft:arrows,type=!minecraft:villager,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:painting,type=!minecraft:experience_orb,type=!minecraft:player,distance=0..8,limit=1,sort=nearest]
execute at @e[type=!#minecraft:arrows,type=!minecraft:villager,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:painting,type=!minecraft:experience_orb,type=!minecraft:player] as @e[distance=0..8,type=arrow,tag=Detect] run tag @s add Hit
execute at @e[type=arrow,tag=Detect,tag=Hit] as @e[type=arrow,tag=Detect,tag=Hit] run tp @s ~ ~3 ~
execute at @e[type=arrow,tag=Detect,tag=Hit] as @e[type=arrow,tag=Detect,tag=Hit] run data merge entity @s {Motion:[0.0,-3.0,0.0]}
execute at @e[type=minecraft:arrow,tag=AA] run particle end_rod ~ ~ ~ 0 0 0 1 0 normal
execute at @e[type=arrow,tag=Detect,tag=Hit] as @e[type=arrow,tag=Detect,tag=Hit] run tag @s remove Detect

# Wither arrows #

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Arrow:2}}}] run data merge entity @e[scores={EF=..2},type=arrow,limit=1,distance=..2] {Tags:["WS"],CustomPotionEffects:[{Id:20b,Amplifier:3b,Duration:80,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=WS] run particle soul ~ ~ ~ 0 0 0 1 0 normal

# Crit arrow # 

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Arrow:3}}}] run data merge entity @e[scores={EF=..2},type=arrow,limit=1,distance=..2] {Tags:["CA"],crit:1b}
execute at @e[type=minecraft:arrow,tag=CA] run particle enchanted_hit ~ ~ ~ 0 0 0 1 0 normal

# Lighting arrow #

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Arrow:4}}}] run data merge entity @e[scores={EF=..2},type=arrow,limit=1,distance=..2] {Tags:["LA"]}
execute at @e[type=!minecraft:arrow,type=!minecraft:villager,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:painting,type=!minecraft:experience_orb,type=!#minecraft:arrows,type=!minecraft:player] as @e[distance=0..3,type=arrow,tag=!Hit2,tag=LA] run tag @s add Detect2
execute at @e[type=arrow,tag=Detect2,tag=!Hit2] as @e[type=arrow,tag=Detect2,tag=!Hit2] run tp @s @e[type=!#minecraft:arrows,type=!minecraft:villager,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:painting,type=!minecraft:experience_orb,type=!minecraft:player,distance=0..3,limit=1,sort=nearest]
execute at @e[type=!#minecraft:arrows,type=!minecraft:villager,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:painting,type=!minecraft:experience_orb,type=!minecraft:player] as @e[distance=0..3,type=arrow,tag=Detect2] run tag @s add Hit2
execute at @e[type=arrow,tag=Detect2,tag=Hit2] as @e[type=arrow,tag=Detect2,tag=Hit2] run tp @s ~ ~3 ~
execute at @e[type=arrow,tag=Detect2,tag=Hit2] as @e[type=arrow,tag=Detect2,tag=Hit2] run summon lightning_bolt ~ ~-1 ~
execute at @e[type=arrow,tag=Detect2,tag=Hit2] as @e[type=arrow,tag=Detect2,tag=Hit2] run kill @s
execute at @e[type=villager] run kill @e[type=arrow,tag=LA,distance=..7]
execute at @e[type=minecraft:arrow,tag=LA,nbt={inGround:1b}] run summon lightning_bolt ~ ~1 ~
execute at @e[type=minecraft:arrow,tag=LA] run particle instant_effect ~ ~ ~ 0 0 0 1 0 normal

# Explosive arrow # 

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Arrow:5}}}] run data merge entity @e[scores={EF=..2},type=arrow,limit=1,distance=..2] {Tags:["EA"]}
execute at @e[type=!minecraft:arrow,type=!minecraft:villager,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:painting,type=!minecraft:experience_orb,type=!#minecraft:arrows,type=!minecraft:player] as @e[distance=0..3,type=arrow,tag=!Hit3,tag=EA] run tag @s add Detect3
execute at @e[type=arrow,tag=Detect3,tag=!Hit3] as @e[type=arrow,tag=Detect3,tag=!Hit3] run tp @s @e[type=!#minecraft:arrows,type=!minecraft:villager,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:painting,type=!minecraft:experience_orb,type=!minecraft:player,distance=0..3,limit=1,sort=nearest]
execute at @e[type=!#minecraft:arrows,type=!minecraft:villager,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:painting,type=!minecraft:experience_orb,type=!minecraft:player] as @e[distance=0..3,type=arrow,tag=Detect3] run tag @s add Hit3
execute at @e[type=arrow,tag=Detect3,tag=Hit3] as @e[type=arrow,tag=Detect3,tag=Hit3] run tp @s ~ ~3 ~
execute at @e[type=arrow,tag=Detect3,tag=Hit3] as @e[type=arrow,tag=Detect3,tag=Hit3] run summon creeper ~ ~.3 ~ {ExplosionRadius:3b,Silent:1,Invulnerable:1b,Fuse:1,ignited:1b}
execute at @e[type=arrow,tag=Detect3,tag=Hit3] as @e[type=arrow,tag=Detect3,tag=Hit3] run kill @s
execute at @e[type=villager] run kill @e[type=arrow,tag=LA,distance=..7]
execute at @e[type=minecraft:arrow,tag=EA,nbt={inGround:1b}] run summon creeper ~ ~.3 ~ {ExplosionRadius:3b,Silent:1,Invulnerable:1b,Fuse:1,ignited:1b}
execute at @e[type=minecraft:arrow,tag=EA] run particle flame ~ ~ ~ 0 0 0 1 0 normal

# Shield Destroy arrow #

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Arrow:6}}}] run data merge entity @e[scores={EF=..2},type=arrow,limit=1,distance=..2] {Tags:["SD"],PierceLevel:5b}
execute at @e[type=minecraft:arrow,tag=SD] run particle minecraft:composter ~ ~ ~ 0 0 0 1 0 normal

# Anti Grav Arrow #

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Arrow:7}}}] run data merge entity @e[scores={EF=..2},type=arrow,limit=1,distance=..2] {Tags:["AG"],NoGravity:1b}
execute as @e[type=arrow,nbt={NoGravity:1b}] run data merge entity @e[scores={AD=100..},type=arrow,limit=1,nbt={NoGravity:1b}] {NoGravity:0b}
scoreboard players add @e[type=arrow,tag=AG] AD 1
execute at @e[type=minecraft:arrow,tag=AG,scores={AD=0..100}] run particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 1 0 normal
execute at @e[type=minecraft:arrow,tag=AG,scores={AD=100..}] run particle dust 0.000 1.000 0.000 1 ~ ~ ~ 0 0 0 1 0 normal

# Artilery Arrow #

execute at @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{Arrow:8}}}] run data merge entity @e[scores={EF=..2},type=arrow,limit=1,distance=..2] {Tags:["AF"]}
scoreboard players add @e[tag=AF] AD 1
execute at @e[type=arrow,tag=AF] run particle minecraft:enchant
execute at @e[type=bat,tag=AF] run particle minecraft:dust 0 0 1 1 ~ ~ ~ 0 0 0 0 1
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,BatFlags:0b,Tags:["AF"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2400,ShowParticles:0b}]}
execute at @e[type=minecraft:arrow,tag=AF,scores={AD=30..}] run kill @e[type=minecraft:arrow,tag=AF,scores={AD=30..},limit=1]
execute as @e[type=minecraft:bat,tag=AF,scores={AD=50..}] run data merge entity @s {Motion:[0.0,-1.4,0.0]}
execute at @e[type=minecraft:bat,tag=AF] unless block ~ ~-1 ~ air run summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:1,ignited:1b}
execute at @e[type=minecraft:bat,tag=AF] unless block ~ ~-1 ~ air run kill @e[type=minecraft:bat,tag=AF,limit=1,distance=..1]

