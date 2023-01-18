class AddActiveUserToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :active_user, :boolean
  end
end
