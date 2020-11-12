
gamerule sendCommandFeedback false
gamerule mobGriefing false

scoreboard objectives add EF dummy
scoreboard objectives add AD dummy
scoreboard objectives add M dummy
scoreboard objectives add Mana dummy
kill @e[tag=M]
summon armor_stand 0 1 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["M"]}

scoreboard objectives add GlobalMin dummy
scoreboard objectives add GlobalMana dummy
scoreboard objectives add Minus dummy
scoreboard objectives add Plus dummy
scoreboard objectives add Total dummy
scoreboard players set GLOBAL GlobalMin 0
scoreboard players set GLOBAL GlobalMana 100