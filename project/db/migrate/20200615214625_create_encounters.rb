class CreateEncounters < ActiveRecord::Migration[5.2]
  def change
    create_table :encounters do |t|
      t.integer :player_id
      t.integer :monster_id
    end
  end
end
