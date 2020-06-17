# jenkins = Player.create(player_name: "Leeroy Jenkins", player_class: "Warrior")
# anah = Player.create(player_name: "Anah Klein", player_class: "Bard")
# brox = Player.create(player_name: "Brox", player_class: "Hunter")

# nessie = Monster.create(monster_name: "Loch Ness", monster_type: "Aquatic")
# bugbear = Monster.create(monster_name: "Bugbear", monster_type: "Grass-Type")
# beholder = Monster.create(monster_name: "Beholder", monster_type: "Underdark")

# Encounter.create(player: jenkins, monster: nessie)



    
# Ability.create([
#     {job_id:1, ability_name: "Fell Cleave"}, 
#     {job_id:2,ability_name: "Heavy Shot"},    
#     {job_id:3,ability_name: "Harp Slap"},  
#     {job_id:4,ability_name: "Royal Authority"},
#     {job_id:5,ability_name: "Flare"},
#     {job_id:6,ability_name: "Glare"},  
#     {job_id:7,ability_name: "Verfire"}, 
#     {job_id:8,ability_name: "Choco Meteor"},
#     {job_id:9,ability_name: "Gaia"},
#     {job_id:10,ability_name: "Fast Forward"},
#     {job_id:11,ability_name: "Bomb Toss"},
#     {job_id:12,ability_name: "Familiar Smack"},
#     {job_id:13,ability_name: "Backstab"},
#     {job_id:14,ability_name: "Pummel"},
#     {job_id:15,ability_name: "Wraaaaaaaaagh"},
#     {job_id:16,ability_name: "Energy Drain"},
#     {job_id:17,ability_name: "Stop It :("},
#     {job_id:18,ability_name: "Sage it Up"},
#     {job_id:19,ability_name: "Necronomicon"},
#     {job_id:20,ability_name: "Wild Magic"},
#     {job_id:21,ability_name: "StabbyShots"},
#     {job_id:22,ability_name: "Midare Setsugeka"}
#     ])

# Monster.create(monster_name: "Cactuar", monster_type: "Cactus?", hp: 100)
# Monster.create(monster_name: "Red Chocobo", monster_type: "Not good for riding", hp: 90)
# Monster.create(monster_name: "Behemoth", monster_type: "Meteor-Summoner", hp: 120)
# Monster.create(monster_name: "Dragon", monster_type: "Flying... Duh", hp: 150)
# Monster.create(monster_name: "Skeleton", monster_type: "Undead", hp: 80)
# Monster.create(monster_name: "Slime", monster_type: "Gross", hp: 70)
# Monster.create(monster_name: "Demon", monster_type: "Underdark", hp: 100)
# Monster.create(monster_name: "Shadow", monster_type: "Undead", hp: 80)
# Monster.create(monster_name: "Lich", monster_type: "Gross", hp: 150)
# Monster.create(monster_name: "Giant Crab", monster_type: "Treif", hp: 90)
# Monster.create(monster_name: "Basilisk", monster_type: "Evil-Eye", hp: 100)
# Monster.create(monster_name: "Dementor", monster_type: "What are you even doing here?", hp: 120)
# Monster.create(monster_name: "Zombie", monster_type: "Undead", hp: 70)

Job.where(job_name: "Warrior").update(max_hp: 150)
Job.where(job_name: "Ranger").update(max_hp: 100)
Job.where(job_name: "Bard").update(max_hp: 100)
Job.where(job_name: "Paladin").update(max_hp: 125)
Job.where(job_name: "Black Mage").update(max_hp: 95)
Job.where(job_name: "White Mage").update(max_hp: 90)
Job.where(job_name: "Red Mage").update(max_hp: 95)
Job.where(job_name: "Blue Mage").update(max_hp: 95)
Job.where(job_name: "Geomancer").update(max_hp: 95)
Job.where(job_name: "Time Mage").update(max_hp: 95)
Job.where(job_name: "Chemist").update(max_hp: 95)
Job.where(job_name: "Beast Tamer").update(max_hp: 100)
Job.where(job_name: "Theif").update(max_hp: 100)
Job.where(job_name: "Monk").update(max_hp: 100)
Job.where(job_name: "Barbarian").update(max_hp: 120)
Job.where(job_name: "Dark Knight").update(max_hp: 125)
Job.where(job_name: "White Knight").update(max_hp: 120)
Job.where(job_name: "Demon Hunter").update(max_hp: 95)
Job.where(job_name: "Warlock").update(max_hp: 95)
Job.where(job_name: "Socerer").update(max_hp: 95)
Job.where(job_name: "Gunbreaker").update(max_hp: 110)
Job.where(job_name: "Samurai").update(max_hp: 100)

# Job.create([
#     {job_name: "Warrior"}, 
#     {job_name: "Ranger"},
#     {job_name: "Bard"}, 
#     {job_name: "Paladin"}, 
#     {job_name: "Black Mage"}, 
#     {job_name: "White Mage"}, 
#     {job_name: "Red Mage"}, 
#     {job_name: "Blue Mage"}, 
#     {job_name: "Geomancer"}, 
#     {job_name: "Time Mage"},
#     {job_name: "Chemist"}, 
#     {job_name: "Beast Tamer"}, 
#     {job_name: "Theif"}, 
#     {job_name: "Monk"}, 
#     {job_name: "Barbarian"}, 
#     {job_name: "Dark Knight"},
#     {job_name: "White Knight"}, 
#     {job_name: "Demon Hunter"}, 
#     {job_name: "Warlock"}, 
#     {job_name: "Sorcerer"}, 
#     {job_name: "Gunbreaker"}, 
#     {job_name: "Samurai"}
#     ]) 

ction
=> true
[11] pry(main)> job_ability = Ability.where(job_id: 4)
D, [2020-06-17T15:28:16.657228 #24510] DEBUG -- :   Ability Load (0.1ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 4]]
=> [#<Ability:0x00007feeec344148
  id: 4,
  ability_name: "Righteous Stab",
  job_id: 4,
  damage: nil>,
 #<Ability:0x00007feeec344008
  id: 26,
  ability_name: "Royal Authority",
  job_id: 4,
  damage: nil>]
[12] pry(main)> job_ability[0].update(damage: rand(1..20))
D, [2020-06-17T15:29:04.206714 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:29:04.207749 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 6], ["id", 4]]
D, [2020-06-17T15:29:04.208883 #24510] DEBUG -- :    (0.9ms)  commit transaction
=> true
[13] pry(main)> job_ability[1].update(damage: 2*rand(1..12))
D, [2020-06-17T15:30:37.484495 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:30:37.486176 #24510] DEBUG -- :   Ability Update (0.9ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 14], ["id", 26]]
D, [2020-06-17T15:30:37.487843 #24510] DEBUG -- :    (1.5ms)  commit transaction
=> true
[14] pry(main)> job_ability = Ability.where(job_id: 5)
D, [2020-06-17T15:30:56.382623 #24510] DEBUG -- :   Ability Load (0.1ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 5]]
=> [#<Ability:0x00007feef0b18410
  id: 5,
  ability_name: "Epxlooooooooosion",
  job_id: 5,
  damage: nil>,
 #<Ability:0x00007feef0b182d0
  id: 27,
  ability_name: "Flare",
  job_id: 5,
  damage: nil>]
[15] pry(main)> job_ability[0].update(damage: 2*rand(1..20))
D, [2020-06-17T15:31:14.911954 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:31:14.913512 #24510] DEBUG -- :   Ability Update (1.1ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 8], ["id", 5]]
D, [2020-06-17T15:31:14.914726 #24510] DEBUG -- :    (1.1ms)  commit transaction
=> true
[16] pry(main)> job_ability[1].update(damage: 2*rand(1..12))
D, [2020-06-17T15:31:22.813863 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:31:22.814721 #24510] DEBUG -- :   Ability Update (0.3ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 22], ["id", 27]]
D, [2020-06-17T15:31:22.815770 #24510] DEBUG -- :    (0.9ms)  commit transaction
=> true
[17] pry(main)> job_ability = Ability.where(job_id: 6)
D, [2020-06-17T15:31:35.300898 #24510] DEBUG -- :   Ability Load (0.5ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 6]]
=> [#<Ability:0x00007feeec3ac518
  id: 6,
  ability_name: "Freeeeeeeeeze",
  job_id: 6,
  damage: nil>,
 #<Ability:0x00007feeec3ac3d8
  id: 28,
  ability_name: "Glare",
  job_id: 6,
  damage: nil>]
[18] pry(main)> job_ability[0].update(damage: 3*rand(1..10))
D, [2020-06-17T15:31:58.150044 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:31:58.151558 #24510] DEBUG -- :   Ability Update (0.9ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 3], ["id", 6]]
D, [2020-06-17T15:31:58.153141 #24510] DEBUG -- :    (1.4ms)  commit transaction
=> true
[19] pry(main)> job_ability[1].update(damage: -2*rand(1..12))
D, [2020-06-17T15:32:11.176442 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:32:11.178439 #24510] DEBUG -- :   Ability Update (1.1ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", -8], ["id", 28]]
D, [2020-06-17T15:32:11.180072 #24510] DEBUG -- :    (1.2ms)  commit transaction
=> true
[20] pry(main)> job_ability = Ability.where(job_id: 7)
D, [2020-06-17T15:33:24.621175 #24510] DEBUG -- :   Ability Load (0.5ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 7]]
=> [#<Ability:0x00007feeecdfc540
  id: 7,
  ability_name: "Fireball",
  job_id: 7,
  damage: nil>,
 #<Ability:0x00007feeecdfc400
  id: 29,
  ability_name: "Verfire",
  job_id: 7,
  damage: nil>]
[21] pry(main)> job_ability[0].update(damage: 3*rand(1..12))
D, [2020-06-17T15:33:56.018763 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:33:56.020436 #24510] DEBUG -- :   Ability Update (1.2ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 12], ["id", 7]]
D, [2020-06-17T15:33:56.022265 #24510] DEBUG -- :    (1.7ms)  commit transaction
=> true
[22] pry(main)> job_ability[1].update(damage: 2*rand(1..12))
D, [2020-06-17T15:34:17.687657 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:34:17.688865 #24510] DEBUG -- :   Ability Update (0.5ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 10], ["id", 29]]
D, [2020-06-17T15:34:17.690290 #24510] DEBUG -- :    (1.2ms)  commit transaction
=> true
[23] pry(main)> job_ability = Ability.where(job_id: 8)
D, [2020-06-17T15:34:25.888678 #24510] DEBUG -- :   Ability Load (0.2ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 8]]
=> [#<Ability:0x00007feeec9f71c0
  id: 8,
  ability_name: "Doom",
  job_id: 8,
  damage: nil>,
 #<Ability:0x00007feeec9f6e50
  id: 30,
  ability_name: "Choco Meteor",
  job_id: 8,
  damage: nil>]
[24] pry(main)> job_ability[0].update(damage: 6*rand(1..6))
D, [2020-06-17T15:35:33.765214 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:35:33.768111 #24510] DEBUG -- :   Ability Update (2.3ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 18], ["id", 8]]
D, [2020-06-17T15:35:33.770371 #24510] DEBUG -- :    (2.0ms)  commit transaction
=> true
[25] pry(main)> job_ability[0].update(damage: 4*rand(1..6))
D, [2020-06-17T15:35:43.901704 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:35:43.902665 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 20], ["id", 8]]
D, [2020-06-17T15:35:43.903632 #24510] DEBUG -- :    (0.7ms)  commit transaction
=> true
[26] pry(main)> job_ability = Ability.where(job_id: 9)
D, [2020-06-17T15:36:13.711774 #24510] DEBUG -- :   Ability Load (0.2ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 9]]
=> [#<Ability:0x00007feeed2901b0
  id: 9,
  ability_name: "Stone Rain",
  job_id: 9,
  damage: nil>,
 #<Ability:0x00007feeed2917e0
  id: 31,
  ability_name: "Gaia",
  job_id: 9,
  damage: nil>]
[27] pry(main)> job_ability[0].update(damage: 4*rand(1..6))
D, [2020-06-17T15:36:42.933337 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:36:42.935633 #24510] DEBUG -- :   Ability Update (1.7ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 20], ["id", 9]]
D, [2020-06-17T15:36:42.940003 #24510] DEBUG -- :    (4.0ms)  commit transaction
=> true
[28] pry(main)> job_ability[1].update(damage: -2*rand(1..6))
D, [2020-06-17T15:37:25.826153 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:37:25.827271 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", -12], ["id", 31]]
D, [2020-06-17T15:37:25.828164 #24510] DEBUG -- :    (0.7ms)  commit transaction
=> true
[29] pry(main)> job_ability = Ability.where(job_id: 8)
D, [2020-06-17T15:37:29.970556 #24510] DEBUG -- :   Ability Load (0.2ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 8]]
=> [#<Ability:0x00007feeed2b0af0
  id: 8,
  ability_name: "Doom",
  job_id: 8,
  damage: 20>,
 #<Ability:0x00007feeed2b0438
  id: 30,
  ability_name: "Choco Meteor",
  job_id: 8,
  damage: nil>]
[30] pry(main)> job_ability[0].update(damage: 6*rand(1..6))
D, [2020-06-17T15:37:41.492596 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:37:41.493732 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 12], ["id", 8]]
D, [2020-06-17T15:37:41.494679 #24510] DEBUG -- :    (0.8ms)  commit transaction
=> true
[31] pry(main)> job_ability[1].update(damage: 4*rand(1..6))
D, [2020-06-17T15:37:58.019336 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:37:58.021101 #24510] DEBUG -- :   Ability Update (1.2ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 24], ["id", 30]]
D, [2020-06-17T15:37:58.022835 #24510] DEBUG -- :    (1.6ms)  commit transaction
=> true
[32] pry(main)> job_ability = Ability.where(job_id: 10)
D, [2020-06-17T15:38:03.497442 #24510] DEBUG -- :   Ability Load (0.2ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 10]]
=> [#<Ability:0x00007feef0a23d48
  id: 10,
  ability_name: "Slooooooooow Dooooooown",
  job_id: 10,
  damage: nil>,
 #<Ability:0x00007feef0a23c08
  id: 32,
  ability_name: "Fast Forward",
  job_id: 10,
  damage: nil>]
[33] pry(main)> job_ability[0].update(damage: rand(1..16))
D, [2020-06-17T15:38:56.082233 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:38:56.083850 #24510] DEBUG -- :   Ability Update (1.1ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 6], ["id", 10]]
D, [2020-06-17T15:38:56.085550 #24510] DEBUG -- :    (1.5ms)  commit transaction
=> true
[34] pry(main)> job_ability[1].update(damage: 8*rand(1..2))
D, [2020-06-17T15:39:09.545410 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:39:09.546284 #24510] DEBUG -- :   Ability Update (0.3ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 8], ["id", 32]]
D, [2020-06-17T15:39:09.547439 #24510] DEBUG -- :    (1.0ms)  commit transaction
=> true
[35] pry(main)> job_ability = Ability.where(job_id: 11)
D, [2020-06-17T15:39:29.909901 #24510] DEBUG -- :   Ability Load (0.1ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 11]]
=> [#<Ability:0x00007feeec2ddf10
  id: 11,
  ability_name: "Mystery Potion",
  job_id: 11,
  damage: nil>,
 #<Ability:0x00007feeec2dddd0
  id: 33,
  ability_name: "Bomb Toss",
  job_id: 11,
  damage: nil>]
[36] pry(main)> job_ability[0].update(damage: rand(1..4)+rand(1..5)+rand(1..6))
D, [2020-06-17T15:40:27.946219 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:40:27.947040 #24510] DEBUG -- :   Ability Update (0.3ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 10], ["id", 11]]
D, [2020-06-17T15:40:27.948215 #24510] DEBUG -- :    (1.0ms)  commit transaction
=> true
[37] pry(main)> job_ability[1].update(damage: 4*rand(1..4))D, [2020-06-17T15:40:50.122927 #24510] DEBUG -- :    (0.2ms)  begin transaction
D, [2020-06-17T15:40:50.125317 #24510] DEBUG -- :   Ability Update (0.8ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 4], ["id", 33]]
D, [2020-06-17T15:40:50.127514 #24510] DEBUG -- :    (1.7ms)  commit transaction
=> true
[38] pry(main)> job_ability[0].update(damage: -(rand(1..4)+rand(1..5)+rand(1..6)))
D, [2020-06-17T15:41:10.162353 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:41:10.164065 #24510] DEBUG -- :   Ability Update (1.1ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", -5], ["id", 11]]
D, [2020-06-17T15:41:10.165675 #24510] DEBUG -- :    (1.4ms)  commit transaction
=> true
[39] pry(main)> job_ability = Ability.where(job_id: 12)D, [2020-06-17T15:42:03.434446 #24510] DEBUG -- :   Ability Load (0.3ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 12]]
=> [#<Ability:0x00007feef0aa3598
  id: 12,
  ability_name: "Summon Familiar",
  job_id: 12,
  damage: nil>,
 #<Ability:0x00007feef0aa3458
  id: 34,
  ability_name: "Familiar Smack",
  job_id: 12,
  damage: nil>]
[40] pry(main)> job_ability[0].update(damage: rand(1..6))D, [2020-06-17T15:42:55.102845 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:42:55.104005 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 5], ["id", 12]]
D, [2020-06-17T15:42:55.105771 #24510] DEBUG -- :    (1.5ms)  commit transaction
=> true
[41] pry(main)> job_ability[1].update(damage: 4*rand(1..6))D, [2020-06-17T15:43:06.547650 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:43:06.549199 #24510] DEBUG -- :   Ability Update (0.7ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 20], ["id", 34]]
D, [2020-06-17T15:43:06.551429 #24510] DEBUG -- :    (1.8ms)  commit transaction
=> true
[42] pry(main)> job_ability = Ability.where(job_id: 13)
D, [2020-06-17T15:43:14.621079 #24510] DEBUG -- :   Ability Load (0.1ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 13]]
=> [#<Ability:0x00007feef0ad2618
  id: 13,
  ability_name: "Mug",
  job_id: 13,
  damage: nil>,
 #<Ability:0x00007feef0ad24d8
  id: 35,
  ability_name: "Backstab",
  job_id: 13,
  damage: nil>]
[43] pry(main)> job_ability[0].update(damage: -rand(1..4))
D, [2020-06-17T15:43:37.594758 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:43:37.596138 #24510] DEBUG -- :   Ability Update (0.5ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", -2], ["id", 13]]
D, [2020-06-17T15:43:37.597230 #24510] DEBUG -- :    (0.9ms)  commit transaction
=> true
[44] pry(main)> job_ability[1].update(damage: 8*rand(1..3))
D, [2020-06-17T15:44:03.735486 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:44:03.736459 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 16], ["id", 35]]
D, [2020-06-17T15:44:03.737407 #24510] DEBUG -- :    (0.8ms)  commit transaction
=> true
[45] pry(main)> job_ability = Ability.where(job_id: 14)
D, [2020-06-17T15:44:17.647889 #24510] DEBUG -- :   Ability Load (0.2ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 14]]
=> [#<Ability:0x00007feeec355560
  id: 14,
  ability_name: "Suplex",
  job_id: 14,
  damage: nil>,
 #<Ability:0x00007feeec355420
  id: 36,
  ability_name: "Pummel",
  job_id: 14,
  damage: nil>]
[46] pry(main)> job_ability[0].update(damage: 2*rand(1..8))
D, [2020-06-17T15:44:54.276254 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:44:54.277111 #24510] DEBUG -- :   Ability Update (0.3ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 14], ["id", 14]]
D, [2020-06-17T15:44:54.278059 #24510] DEBUG -- :    (0.8ms)  commit transaction
=> true
[47] pry(main)> job_ability[1].update(damage: 6*rand(1..4))
D, [2020-06-17T15:45:04.903475 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:45:04.904246 #24510] DEBUG -- :   Ability Update (0.3ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 24], ["id", 36]]
D, [2020-06-17T15:45:04.905184 #24510] DEBUG -- :    (0.8ms)  commit transaction
=> true
[48] pry(main)> job_ability = Ability.where(job_id: 15)
D, [2020-06-17T15:45:18.955953 #24510] DEBUG -- :   Ability Load (0.1ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 15]]
=> [#<Ability:0x00007feeec384310
  id: 15,
  ability_name: "Rip Into Pieces",
  job_id: 15,
  damage: nil>,
 #<Ability:0x00007feeec3841d0
  id: 37,
  ability_name: "Wraaaaaaaaagh",
  job_id: 15,
  damage: nil>]
[49] pry(main)> job_ability[0].update(damage: 2*rand(1..12))
D, [2020-06-17T15:45:40.399958 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:45:40.400913 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 10], ["id", 15]]
D, [2020-06-17T15:45:40.402054 #24510] DEBUG -- :    (1.0ms)  commit transaction
=> true
[50] pry(main)> job_ability[1].update(damage: rand(1..20))
D, [2020-06-17T15:46:00.770112 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:46:00.771561 #24510] DEBUG -- :   Ability Update (0.6ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 20], ["id", 37]]
D, [2020-06-17T15:46:00.772963 #24510] DEBUG -- :    (1.1ms)  commit transaction
=> true
[51] pry(main)> job_ability = Ability.where(job_id: 16)
D, [2020-06-17T15:46:06.020419 #24510] DEBUG -- :   Ability Load (0.2ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 16]]
=> [#<Ability:0x00007feeecde72f8
  id: 16,
  ability_name: "Life Siphon",
  job_id: 16,
  damage: nil>,
 #<Ability:0x00007feeecde7190
  id: 38,
  ability_name: "Energy Drain",
  job_id: 16,
  damage: nil>]
[52] pry(main)> job_ability[0].update(damage: -2*rand(1..12))
D, [2020-06-17T15:46:31.491366 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:46:31.492859 #24510] DEBUG -- :   Ability Update (1.0ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", -4], ["id", 16]]
D, [2020-06-17T15:46:31.493893 #24510] DEBUG -- :    (0.9ms)  commit transaction
=> true
[53] pry(main)> job_ability[1].update(damage: 2*rand(1..20))
D, [2020-06-17T15:46:45.012625 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:46:45.013781 #24510] DEBUG -- :   Ability Update (0.5ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 22], ["id", 38]]
D, [2020-06-17T15:46:45.015158 #24510] DEBUG -- :    (1.2ms)  commit transaction
=> true
[54] pry(main)> job_ability = Ability.where(job_id: 17)
D, [2020-06-17T15:47:12.284783 #24510] DEBUG -- :   Ability Load (0.2ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 17]]
=> [#<Ability:0x00007feeec0d4c78
  id: 17,
  ability_name: "Take that back :(",
  job_id: 17,
  damage: nil>,
 #<Ability:0x00007feeec0d43b8
  id: 39,
  ability_name: "Stop It :(",
  job_id: 17,
  damage: nil>]
[55] pry(main)> job_ability[0].update(damage: 3*rand(1..10))
D, [2020-06-17T15:47:37.776802 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:47:37.777728 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 27], ["id", 17]]
D, [2020-06-17T15:47:37.778521 #24510] DEBUG -- :    (0.6ms)  commit transaction
=> true
[56] pry(main)> job_ability[1].update(damage: -rand(1..6))
D, [2020-06-17T15:47:57.367820 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:47:57.368686 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", -3], ["id", 39]]
D, [2020-06-17T15:47:57.369801 #24510] DEBUG -- :    (0.9ms)  commit transaction
=> true
[57] pry(main)> job_ability = Ability.where(job_id: 18)
D, [2020-06-17T15:48:03.638005 #24510] DEBUG -- :   Ability Load (0.1ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 18]]
=> [#<Ability:0x00007feeed26b900
  id: 18,
  ability_name: "Exorcise",
  job_id: 18,
  damage: nil>,
 #<Ability:0x00007feeed26b5e0
  id: 40,
  ability_name: "Sage it Up",
  job_id: 18,
  damage: nil>]
[58] pry(main)> job_ability[0].update(damage: 4*rand(1..10))
D, [2020-06-17T15:48:17.957632 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:48:17.958469 #24510] DEBUG -- :   Ability Update (0.3ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 16], ["id", 18]]
D, [2020-06-17T15:48:17.959137 #24510] DEBUG -- :    (0.6ms)  commit transaction
=> true
[59] pry(main)> job_ability[1].update(damage: -rand(1..5))
D, [2020-06-17T15:48:41.671652 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:48:41.672633 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", -4], ["id", 40]]
D, [2020-06-17T15:48:41.673836 #24510] DEBUG -- :    (1.0ms)  commit transaction
=> true
[60] pry(main)> job_ability = Ability.where(job_id: 19)
D, [2020-06-17T15:48:46.865627 #24510] DEBUG -- :   Ability Load (0.2ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 19]]
=> [#<Ability:0x00007feef09d6228
  id: 19,
  ability_name: "Curse",
  job_id: 19,
  damage: nil>,
 #<Ability:0x00007feef09d60c0
  id: 41,
  ability_name: "Necronomicon",
  job_id: 19,
  damage: nil>]
[61] pry(main)> job_ability[0].update(damage: 6*rand(1..6))
D, [2020-06-17T15:49:02.793908 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:49:02.794750 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 30], ["id", 19]]
D, [2020-06-17T15:49:02.796078 #24510] DEBUG -- :    (1.1ms)  commit transaction
=> true
[62] pry(main)> job_ability[1].update(damage: rand(6..13))
D, [2020-06-17T15:49:59.528289 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:49:59.529632 #24510] DEBUG -- :   Ability Update (0.6ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 12], ["id", 41]]
D, [2020-06-17T15:49:59.531057 #24510] DEBUG -- :    (1.2ms)  commit transaction
=> true
[63] pry(main)> job_ability = Ability.where(job_id: 20)
D, [2020-06-17T15:50:04.551395 #24510] DEBUG -- :   Ability Load (0.1ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 20]]
=> [#<Ability:0x00007feeecc6d238
  id: 20,
  ability_name: "Mystery Spell",
  job_id: 20,
  damage: nil>,
 #<Ability:0x00007feeecc6d0a8
  id: 42,
  ability_name: "Wild Magic",
  job_id: 20,
  damage: nil>]
[64] pry(main)> job_ability[0].update(damage: rand(1..20)+rand(1..12)+rand(1..8)+rand(1..6))
D, [2020-06-17T15:51:18.530850 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:51:18.531990 #24510] DEBUG -- :   Ability Update (0.5ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 14], ["id", 20]]
D, [2020-06-17T15:51:18.533326 #24510] DEBUG -- :    (1.1ms)  commit transaction
=> true
[65] pry(main)> job_ability[1].update(damage: -(rand(0..12)+rand(0..8)+rand(0..6)+rand(0..4)))
D, [2020-06-17T15:52:51.452941 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:52:51.454272 #24510] DEBUG -- :   Ability Update (0.4ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", -14], ["id", 42]]
D, [2020-06-17T15:52:51.455378 #24510] DEBUG -- :    (0.9ms)  commit transaction
=> true
[66] pry(main)> job_ability = Ability.where(job_id: 21)D, [2020-06-17T15:53:04.377965 #24510] DEBUG -- :   Ability Load (0.2ms)  SELECT "abilities".* FROM "abilities" WHERE "abilities"."job_id" = ?  [["job_id", 21]]
=> [#<Ability:0x00007feeec2c65b8
  id: 21,
  ability_name: "ShootyStabs",
  job_id: 21,
  damage: nil>,
 #<Ability:0x00007feeec2c6478
  id: 43,
  ability_name: "StabbyShots",
  job_id: 21,
  damage: nil>]
[67] pry(main)> job_ability[0].update(damage: 3*rand(1..6))D, [2020-06-17T15:53:53.386633 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:53:53.388189 #24510] DEBUG -- :   Ability Update (0.8ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 6], ["id", 21]]
D, [2020-06-17T15:53:53.389224 #24510] DEBUG -- :    (0.8ms)  commit transaction
=> true
[68] pry(main)> job_ability[1].update(damage: 6*rand(1..3))
D, [2020-06-17T15:54:06.926383 #24510] DEBUG -- :    (0.1ms)  begin transaction
D, [2020-06-17T15:54:06.927819 #24510] DEBUG -- :   Ability Update (0.5ms)  UPDATE "abilities" SET "damage" = ? WHERE "abilities"."id" = ?  [["damage", 18], ["id", 43]]
D, [2020-06-17T15:54:06.929764 #24510] DEBUG -- :    (1.5ms)  commit transaction
=> true
job_ability = Ability.where(job_id: 22)
job_ability[0].update(damage: 3*rand(1..4))
job_ability[1].update(damage: 6*rand(1..4))
