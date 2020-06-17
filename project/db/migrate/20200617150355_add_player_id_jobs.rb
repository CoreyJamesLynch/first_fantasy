class AddPlayerIdJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :player_id, :integer
  end
end
