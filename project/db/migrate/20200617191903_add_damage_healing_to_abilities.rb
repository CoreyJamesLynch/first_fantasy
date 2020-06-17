class AddDamageHealingToAbilities < ActiveRecord::Migration[5.2]
  def change
    add_column :abilities, :damage, :integer
  end
end
