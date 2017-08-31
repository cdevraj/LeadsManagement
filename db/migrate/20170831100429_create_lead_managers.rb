class CreateLeadManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :lead_managers do |t|
      t.integer :lead_generator_id
      t.integer :manager_id

      t.timestamps
    end
  end
end
