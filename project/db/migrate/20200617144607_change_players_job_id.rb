class ChangePlayersJobId < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :player_class, :string
    
    add_column :players, :job_id, :integer
  end
end
