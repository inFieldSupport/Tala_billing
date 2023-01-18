class AddActiveStandardToStandard < ActiveRecord::Migration[7.0]
  def change
    add_column :standards, :active_standard, :boolean
  end
end
