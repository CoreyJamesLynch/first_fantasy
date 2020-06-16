class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :monster_name
      t.string :monster_type
    end
  end
end
