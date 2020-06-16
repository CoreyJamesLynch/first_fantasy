require_relative '../config/environment'

puts "Welcome to the dungeon brave soul, what is your name?"
player_name = gets.chomp

if Player.find_by(player_name: player_name)
    Hero = Player.find_by(player_name: player_name)

    puts "Welcome back brave soul!"
else
    puts "#{player_name} what class of hero are you?"
    
    player_class = gets.chomp

    hero = Player.create(player_name: player_name, player_class: player_class)
end

puts "Brave hero, many monsters threaten this village. Which bounty do you wish to take."

encounters = Encounter.where(player: hero)

if encounters.find {|encounter| encounter.monster = bugbear}


Monster.all.each do |monster|
    if 
    puts monster.monster_name

monster_selection = gets.chomp

monster_object = Monster.find_by(monster_name: monster_selection)

# Encounter.create(player: jenkins, monster: nessie)
battle = Encounter.create(player: hero , monster: monster_object)

# Encounter.find_by(player: hero, monster: monster_object)

puts "You slew the #{monster_selection}? Fine work #{player_name}! The kind people here in Blue Daisy village can sleep tight now, here is your bounty."



binding.pry