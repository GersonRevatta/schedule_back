class CreateAllottedHours < ActiveRecord::Migration[7.0]
  def change
    create_table :allotted_hours do |t|
      t.integer :user_id
      t.text :hours
      t.integer :contract_id

      t.timestamps
    end
  end
end
