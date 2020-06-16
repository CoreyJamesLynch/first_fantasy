class AddHpToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :hp, :integer, default: 100
  end
end
