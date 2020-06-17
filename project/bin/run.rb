require_relative '../config/environment'

cont = Controller.new

classes = Job.all.map { |job| job.job_name }

puts "Welcome to the dungeon brave soul, what is your name?"
player_name = gets.chomp

if Player.find_by(player_name: player_name)
    hero = Player.find_by(player_name: player_name)

    puts "Welcome back brave soul!"
else

    player_class = cont.prompt.select("#{player_name} what class of hero are you?", classes)

    job = Job.find_by(job_name: player_class)

    hero = Player.create(player_name: player_name, job: job, money: 0)
end

while(true)
    selection = cont.prompt.select("What would you like to do?", %w(fight commit-seppuku change-class money exit))
        #binding.pry
    if selection == "fight"
        Encounter.fight(hero, cont)
    elsif selection == "commit-seppuku"
        #binding.pry
        Player.destroy(hero.id)
        puts "Rest in pieces, hero"
        break
    elsif selection == "change-class"
        prompt = cont.prompt.select("It cost 10 G to change classes, proceed?", %w(yes no))
        if prompt == "yes"
            previous_money = hero.money
            if previous_money >= 10
                new_class = cont.prompt.select("Pick a new class, #{player_name}", classes)
            
                job = Job.find_by(job_name: new_class)
                hero.update(job: job)
                hero.update(money: previous_money - 10)
            
                puts "Success! Here is your new weapon, hero"
            else
                puts "You only have #{previous_money} G. Maybe save up a little more before trying again."
            end
        else
            puts "Alrighty then, too rich for your blood, eh?"
        end
    elsif selection == "money"
        puts "You have #{hero.money} G to your name, #{player_name}"
    else
        break
    end
end
#binding.pry