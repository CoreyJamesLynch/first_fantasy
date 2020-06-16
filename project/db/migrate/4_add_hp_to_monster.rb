class AddHpToMonster < ActiveRecord::Migration[5.2]
  def change
    add_column :monsters, :hp, :integer, default: 100
  end
end
