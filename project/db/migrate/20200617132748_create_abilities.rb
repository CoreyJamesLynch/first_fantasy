class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.string  :ability_name
      t.integer :job_id
    end
  end
end
