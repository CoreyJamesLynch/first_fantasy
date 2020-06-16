class AddVictoryToEncounter < ActiveRecord::Migration[5.2]
  def change
    add_column :encounters, :victory, :boolean
  end
end
