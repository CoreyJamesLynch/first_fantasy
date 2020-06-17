class AddMaxHpToPlayerAndClass < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :max_hp, :integer
    add_column :jobs, :max_hp, :integer
  end
end
