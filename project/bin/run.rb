require_relative '../config/environment'

cont = Controller.new

classes = ["Warrior", "Ranger", "Bard", "Paladin", "Black Mage", 
"White Mage", "Red Mage", "Blue Mage", "Geomancer", "Time Mage",
 "Chemist", "Beast Tamer", "Theif", "Monk", "Barbarian", "Dark Knight",
"White Knight", "Demon Hunter", "Warlock", "Sorcerer", "Gunbreaker", 
"Samurai"]

puts "Welcome to the dungeon brave soul, what is your name?"
player_name = gets.chomp

if Player.find_by(player_name: player_name)
    hero = Player.find_by(player_name: player_name)

    puts "Welcome back brave soul!"
else

    player_class = cont.prompt.select("#{player_name} what class of hero are you?", classes)

    hero = Player.create(player_name: player_name, player_class: player_class)
end

while(true)
    selection = cont.prompt.select("What would you like to do?", %w(fight commit-seppuku change-class exit))
        #binding.pry
    if selection == "fight"
        Encounter.fight(hero)
    elsif selection == "commit-seppuku"
        #binding.pry
        Player.destroy(hero.id)
        puts "Rest in pieces, hero"
    elsif selection == "change-class"

        new_class = cont.prompt.select("Pick a new class, #{player_name}", classes)
        hero.update(player_class: new_class)
        puts "Success! Here is your new wepon, hero"
    else
        break
    end
end
#binding.pry