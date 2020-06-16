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
                monsters = Monster.all.map do |monster|
                    #binding.pry
                    if !(encounters.find{|encounter| (encounter.monster == monster) && (encounter.victory == true)}) 
                        monster.monster_name
                        #binding.pry
                    end
                end

                monster_object = self.monster_prompt(monsters, cont)

                existance = self.exists?(encounters, monster_object)
    
                if existance
                    encounter = existance
                else
                    encounter = Encounter.create(player: hero , monster: monster_object)
                end

                encounter.encounter_battle(hero, monster_object)

                if encounters_won.length == Monster.all.length
                    puts "Congrats #{player_name}, you have defeated all the monsters!!"
                end

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
        player_hp = hero.hp
        monster_hp = monster.hp

        if self.battle > 0 #this could be a method?
            puts "You slew the #{monster.monster_name}? Fine work #{hero.player_name}! The kind people here in Blue Daisy village can sleep tight now, here is your bounty."
            self.update(victory: true)
            hero.update(hp: player_hp)
            monster.update(hp: monster_hp)
        else
            #binding.pry
            puts "You have suffered a crushing defeat"
            self.update(victory: false)
            hero.update(hp: player_hp)
            monster.update(hp: monster_hp)
        end
    end

    def battle
        who = self.player
        while((self.player.hp > 0) && (self.monster.hp > 0))
            who = self.turn(who)
        end
        self.player.hp
    end

    def turn(who)
        attack = 3*rand(10) #3 d10
        if who == self.player
            start_hp = self.monster.hp
            self.monster.update(hp: start_hp - attack)
            who = self.monster
        else
            start_hp = self.player.hp
            self.player.update(hp: start_hp - attack)
            who = self.player
        end
    end

end