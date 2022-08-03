class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.string :client_id
      t.string :name
      t.text :hours
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
