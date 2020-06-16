require_relative '../config/environment'

puts "Welcome to the dungeon brave soul, what is your name?"
player_name = gets.chomp

if Player.find_by(player_name: player_name)
    hero = Player.find_by(player_name: player_name)

    puts "Welcome back brave soul!"
else
    puts "#{player_name} what class of hero are you?"
    
    player_class = gets.chomp

    hero = Player.create(player_name: player_name, player_class: player_class)
end

cont = Controller.new
selection = cont.prompt.select("What would you like to do?", %w(fight commit-seppuku))
    #binding.pry
if selection == "fight"
    Encounter.fight(hero, player_name, player_class)
elsif selection == "commit-seppuku"
    #binding.pry
    Player.destroy(hero.id)
    puts "Rest in pieces, hero"
end

#binding.pry