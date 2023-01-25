class AddMonthToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :month, :integer
  end
end
