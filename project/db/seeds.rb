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

# Job.where(job_name: "Warrior").update(max_hp: 150)
# Job.where(job_name: "Ranger").update(max_hp: 100)
# Job.where(job_name: "Bard").update(max_hp: 100)
# Job.where(job_name: "Paladin").update(max_hp: 125)
# Job.where(job_name: "Black Mage").update(max_hp: 95)
# Job.where(job_name: "White Mage").update(max_hp: 90)
# Job.where(job_name: "Red Mage").update(max_hp: 95)
# Job.where(job_name: "Blue Mage").update(max_hp: 95)
# Job.where(job_name: "Geomancer").update(max_hp: 95)
# Job.where(job_name: "Time Mage").update(max_hp: 95)
# Job.where(job_name: "Chemist").update(max_hp: 95)
# Job.where(job_name: "Beast Tamer").update(max_hp: 100)
# Job.where(job_name: "Theif").update(max_hp: 100)
# Job.where(job_name: "Monk").update(max_hp: 100)
# Job.where(job_name: "Barbarian").update(max_hp: 120)
# Job.where(job_name: "Dark Knight").update(max_hp: 125)
# Job.where(job_name: "White Knight").update(max_hp: 120)
# Job.where(job_name: "Demon Hunter").update(max_hp: 95)
# Job.where(job_name: "Warlock").update(max_hp: 95)
# Job.where(job_name: "Socerer").update(max_hp: 95)
# Job.where(job_name: "Gunbreaker").update(max_hp: 110)
# Job.where(job_name: "Samurai").update(max_hp: 100)

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
# job_ability = Ability.where(job_id: 1)
# job_ability[0].update(damage: 2*rand(1..12))
# job_ability[1].update(damage: rand(1..20))

# job_ability = Ability.where(job_id: 2)
# job_ability[0].update(damage: 4*rand(1..6))
# job_ability[1].update(damage: 2*rand(1..12))

# job_ability = Ability.where(job_id: 3)
# job_ability[0].update(damage: -3*rand(1..4))
# job_ability[1].update(damage: 4*rand(1..4))

# job_ability = Ability.where(job_id: 4)
# job_ability[0].update(damage: rand(1..20))
# job_ability[1].update(damage: 2*rand(1..12))

# job_ability = Ability.where(job_id: 5)
# job_ability[0].update(damage: 2*rand(1..20))
# job_ability[1].update(damage: 2*rand(1..12))

# job_ability = Ability.where(job_id: 6)
# job_ability[0].update(damage: 3*rand(1..10))
# job_ability[1].update(damage: -2*rand(1..12))

# job_ability = Ability.where(job_id: 7)
# job_ability[0].update(damage: 3*rand(1..12))
# job_ability[1].update(damage: 2*rand(1..12))

# job_ability = Ability.where(job_id: 9)
# job_ability[0].update(damage: 4*rand(1..6))
# job_ability[1].update(damage: -2*rand(1..6))

# job_ability = Ability.where(job_id: 8)
# job_ability[0].update(damage: 6*rand(1..6))
# job_ability[1].update(damage: 4*rand(1..6))

# job_ability = Ability.where(job_id: 10)
# job_ability[0].update(damage: rand(1..16))
# job_ability[1].update(damage: 8*rand(1..2))

# job_ability = Ability.where(job_id: 11)
# job_ability[1].update(damage: 4*rand(1..4))
# job_ability[0].update(damage: -(rand(1..4)+rand(1..5)+rand(1..6)))

# job_ability = Ability.where(job_id: 12)
# job_ability[0].update(damage: rand(1..6))
# job_ability[1].update(damage: 4*rand(1..6))

# job_ability = Ability.where(job_id: 13)
# job_ability[0].update(damage: -rand(1..4))
# job_ability[1].update(damage: 8*rand(1..3))

# job_ability = Ability.where(job_id: 14)
# job_ability[0].update(damage: 2*rand(1..8))
# job_ability[1].update(damage: 6*rand(1..4))

# job_ability = Ability.where(job_id: 15)
# job_ability[0].update(damage: 2*rand(1..12))
# job_ability[1].update(damage: rand(1..20))

# job_ability = Ability.where(job_id: 16)
# job_ability[0].update(damage: -2*rand(1..12))
# job_ability[1].update(damage: 2*rand(1..20))

# job_ability = Ability.where(job_id: 17)
# job_ability[0].update(damage: 3*rand(1..10))
# job_ability[1].update(damage: -rand(1..6))

# job_ability = Ability.where(job_id: 18)
# job_ability[0].update(damage: 4*rand(1..10))
# job_ability[1].update(damage: -rand(1..5))

# job_ability = Ability.where(job_id: 19)
# job_ability[0].update(damage: 6*rand(1..6))
# job_ability[1].update(damage: rand(6..13))

# job_ability = Ability.where(job_id: 20)
# job_ability[0].update(damage: rand(1..20)+rand(1..12)+rand(1..8)+rand(1..6))
# job_ability[1].update(damage: -(rand(0..12)+rand(0..8)+rand(0..6)+rand(0..4)))

# job_ability = Ability.where(job_id: 21)
# job_ability[0].update(damage: 3*rand(1..6))
# job_ability[1].update(damage: 6*rand(1..3))

# job_ability = Ability.where(job_id: 22)
# job_ability[0].update(damage: 3*rand(1..4))
# job_ability[1].update(damage: 6*rand(1..4))
