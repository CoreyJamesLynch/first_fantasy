# jenkins = Player.create(player_name: "Leeroy Jenkins", player_class: "Warrior")
# anah = Player.create(player_name: "Anah Klein", player_class: "Bard")
# brox = Player.create(player_name: "Brox", player_class: "Hunter")

# nessie = Monster.create(monster_name: "Loch Ness", monster_type: "Aquatic")
# bugbear = Monster.create(monster_name: "Bugbear", monster_type: "Grass-Type")
# beholder = Monster.create(monster_name: "Beholder", monster_type: "Underdark")

# Encounter.create(player: jenkins, monster: nessie)


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
    
Ability.create([
    {job_id:1, ability_name: "Fell Cleave"}, 
    {job_id:2,ability_name: "Heavy Shot"},    
    {job_id:3,ability_name: "Harp Slap"},  
    {job_id:4,ability_name: "Royal Authority"},
    {job_id:5,ability_name: "Flare"},
    {job_id:6,ability_name: "Glare"},  
    {job_id:7,ability_name: "Verfire"}, 
    {job_id:8,ability_name: "Choco Meteor"},
    {job_id:9,ability_name: "Gaia"},
    {job_id:10,ability_name: "Fast Forward"},
    {job_id:11,ability_name: "Bomb Toss"},
    {job_id:12,ability_name: "Familiar Smack"},
    {job_id:13,ability_name: "Backstab"},
    {job_id:14,ability_name: "Pummel"},
    {job_id:15,ability_name: "Wraaaaaaaaagh"},
    {job_id:16,ability_name: "Energy Drain"},
    {job_id:17,ability_name: "Stop It :("},
    {job_id:18,ability_name: "Sage it Up"},
    {job_id:19,ability_name: "Necronomicon"},
    {job_id:20,ability_name: "Wild Magic"},
    {job_id:21,ability_name: "StabbyShots"},
    {job_id:22,ability_name: "Midare Setsugeka"}
    ])

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

# Monster.where(monster_name: "Cactuar").update(ability: "100 Needles")
# Monster.where(monster_name: "Red Chocobo").update(ability: "Choco Meteor")
# Monster.where(monster_name: "Behemoth").update(ability: "Meteor")
# Monster.where(monster_name: "Dragon").update(ability: "Fire Spit")
# Monster.where(monster_name: "Skeleton").update(ability: "Bone Slap")
# Monster.where(monster_name: "Slime").update(ability: "Moist")
# Monster.where(monster_name: "Demon").update(ability: "Demonic Fire")
# Monster.where(monster_name: "Shadow").update(ability: "Hex")
# Monster.where(monster_name: "Lich").update(ability: "Frightening Gaze")
# Monster.where(monster_name: "Giant Crab").update(ability: "The Claaaaaaaaw owo")
# Monster.where(monster_name: "Basilisk").update(ability: "Stonegaze")
# Monster.where(monster_name: "Dementor").update(ability: "Eat Soul")
# Monster.where(monster_name: "Zombie").update(ability: "Braiiiiiins")
# Monster.where(monster_name: "Loch Ness").update(ability:"Tail Slap")
# Monster.where(monster_name: "Bugbear").update(ability:"Maul")
# Monster.where(monster_name: "Beholder").update(ability:"Mind Drain")