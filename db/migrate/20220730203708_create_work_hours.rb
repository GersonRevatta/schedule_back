class CreateWorkHours < ActiveRecord::Migration[7.0]
  def change
    create_table :work_hours do |t|
      t.string :name
      t.integer :day_id

      t.timestamps
    end
  end
end
