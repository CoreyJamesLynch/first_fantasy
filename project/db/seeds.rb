jenkins = Player.create(player_name: "Leeroy Jenkins", player_class: "Warrior")
anah = Player.create(player_name: "Anah Klein", player_class: "Bard")
brox = Player.create(player_name: "Brox", player_class: "Hunter")

nessie = Monster.create(monster_name: "Loch Ness", monster_type: "Aquatic")
bugbear = Monster.create(monster_name: "Bugbear", monster_type: "Grass-Type")
beholder = Monster.create(monster_name: "Beholder", monster_type: "Underdark")

Encounter.create(player: jenkins, monster: nessie)