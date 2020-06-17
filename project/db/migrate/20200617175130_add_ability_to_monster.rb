class AddAbilityToMonster < ActiveRecord::Migration[5.2]
  def change
    add_column :monsters, :ability, :string
  end
end
