class AddYearToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :year, :integer
  end
end
