class Encounter < ActiveRecord::Base
    belongs_to :monster
    belongs_to :player, dependent: :delete
    def self.fight(hero, cont)
        encounters = Encounter.where(player: hero)
        player_name = hero.player_name
        #binding.pry
        if !(encounters == [])
            #binding.pry
            if encounters.length != Monster.all.length
                monsters = Monster.all.map do |monster|
                    #binding.pry
                    if !(encounters.find{|encounter| (encounter.monster == monster) && (encounter.victory == true)}) 
                        monster.monster_name
                        #binding.pry
                    end
                end
                monster_selection = cont.prompt.select("Brave hero, many monsters threaten this village. Which bounty do you wish to take.", monsters)
    
                monster_object = Monster.find_by(monster_name: monster_selection)
    
                # Encounter.create(player: jenkins, monster: nessie)
                battle = Encounter.create(player: hero , monster: monster_object)
    
                # Encounter.find_by(player: hero, monster: monster_object)
    
                puts "You slew the #{monster_selection}? Fine work #{player_name}! The kind people here in Blue Daisy village can sleep tight now, here is your bounty."
            else
                puts "You've fought all of the monsters #{player_name}! Expansion coming soon, please look forward to it."
            end
        else
            
            monsters = Monster.all.map do |monster|
             monster.monster_name
            end
            
            monster_selection = cont.prompt.select("Brave hero, many monsters threaten this village. Which bounty do you wish to take.", monsters)
    
            monster_object = Monster.find_by(monster_name: monster_selection)
    
            # Encounter.create(player: jenkins, monster: nessie)
            battle = Encounter.create(player: hero , monster: monster_object)
    
            # Encounter.find_by(player: hero, monster: monster_object)
    
            puts "You slew the #{monster_selection}? Fine work #{player_name}! The kind people here in Blue Daisy village can sleep tight now, here is your bounty."
            battle.update(victory: true)
        end
    end
end