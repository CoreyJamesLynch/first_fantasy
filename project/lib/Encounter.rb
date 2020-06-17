class Encounter < ActiveRecord::Base
    belongs_to :monster
    belongs_to :player, dependent: :delete
    def self.fight(hero, cont)
        encounters = Encounter.where(player: hero)
        encounters_won = encounters.select{|encounter| encounter.victory == true}
        player_name = hero.player_name
        #binding.pry
        if !(encounters == [])
            #binding.pry
            if (encounters.length != Monster.all.length)||(encounters_won.length != encounters.length)
                monsters = []
                
                Monster.all.each do |monster|
                    if !(encounters.find{|encounter| (encounter.monster == monster) && (encounter.victory == true)}) 
                        monsters << monster.monster_name
                    end
                end

                monster_object = self.monster_prompt(monsters, cont)

                existance = self.exists?(encounters, monster_object)
    
                if existance
                    encounter = existance
                    encounter.player.update(job: hero.job)
                else
                    encounter = Encounter.create(player: hero , monster: monster_object)
                end

                encounter.encounter_battle(hero, monster_object)
                
                encounters_now = Encounter.where(player: hero)
                encounters_won_now = encounters_now.select{|encounter| encounter.victory == true}
                if encounters_won_now.length == Monster.all.length
                    puts "Congrats #{player_name}, you have defeated all the monsters!!"
                end

                encounter.check(hero)

            else
                puts "You've fought all of the monsters #{player_name}! Expansion coming soon, please look forward to it."
            end
        else
            
            monsters = Monster.all.map do |monster|
                monster.monster_name
            end
            
            monster_object = self.monster_prompt(monsters, cont)

            # Encounter.create(player: jenkins, monster: nessie)
            encounter = Encounter.create(player: hero , monster: monster_object)
            
            encounter.encounter_battle(hero, monster_object)

            encounter.check(hero)

        end
    end

    def check(hero)
        if self.victory
        new_money = self.player.money
            hero.update(money: new_money)
            new_hp = self.player.hp
            hero.update(hp: new_hp)
        else
            hero.update(hp: 100)
            hero.update(money: 0)
            puts "Yer quite beatup like, we're gonna need all the money ye gots for haulin' ye back to town."
        end

    end

    def self.exists?(encounters, monster_object)
        encounters.find{|encounter| (encounter.monster == monster_object)}
    end

    def self.monster_prompt(monsters, cont)
        monster_selection = cont.prompt.select("Brave hero, many monsters threaten this village. Which bounty do you wish to take?", monsters)
            
        monster_object = Monster.find_by(monster_name: monster_selection)
    end

    def encounter_battle(hero, monster)
        hero_hp = hero.hp
        monster_hp = monster.hp
        start_money = hero.money
        # binding.pry

        if self.battle > 0 #this could be a method?
            gold = rand(1..20)
            puts "You slew the #{monster.monster_name}? Fine work #{hero.player_name}! The kind people here in Blue Daisy village can sleep tight now, here is your bounty: #{gold} G"
            self.update(victory: true)
            #self.player.update(hp: hero_hp)
            self.monster.update(hp: monster_hp)
            self.player.update(money: start_money+gold)
        else
            #binding.pry
            puts "You have suffered a crushing defeat"
            self.update(victory: false)
            #self.player.update(hp: hero_hp)
            self.monster.update(hp: monster_hp)
        end
        # binding.pry
    end

    def battle
        #binding.pry
        who = self.player
        while((self.player.hp > 0) && (self.monster.hp > 0))
            puts "#{self.player.player_name} has #{self.player.hp} hp remaining and #{self.monster.monster_name} has #{self.monster.hp} hp remaining."
            # binding.pry
            who = self.turn(who)
        end
        self.player.hp
        #binding.pry
    end

    def turn(who)
        cont = Controller.new()
        attack = rand(1..10) + rand(1..10) + rand(1..10) #3 d10
        job_ability = self.player.job.abilities
        special_skill = job_ability.map { |ability| ability.ability_name }
        if who == self.player
            choice = cont.prompt.select("Do your worst...", %w(Fight Flight))
            
            if choice == "Fight"
                # binding.pry
                choice = cont.prompt.select("Make your move.", special_skill)
                attack = rand(1..4) * Ability.where(ability_name: choice)[0].damage
                if attack > 0
                puts "You used #{choice} for #{attack} damage!"
                start_hp = self.monster.hp
                self.monster.update(hp: start_hp - attack)
                else
                    start_hp = self.player.hp
                    self.player.update(hp: start_hp - attack)
                    puts "You used #{choice} to recover #{-attack} hp!"
                    # binding.pry
                end
                who = self.monster
            else
                puts "Coward, you were the last hope!"
                self.player.update(hp: 0)
                who
                # binding.pry
            end
        else 
            puts "The #{self.monster.monster_name} attacks you with #{self.monster.ability} for #{attack} damage!"
            start_hp = self.player.hp
            self.player.update(hp: start_hp - attack)
            who = self.player
        end
    end

end