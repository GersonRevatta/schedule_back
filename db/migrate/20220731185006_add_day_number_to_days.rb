class AddDayNumberToDays < ActiveRecord::Migration[7.0]
  def change
    add_column :days, :day_number, :integer
  end
end
