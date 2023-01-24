class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.float :total_amount
      t.date :date_of_bill
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
