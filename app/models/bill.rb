class Bill < ApplicationRecord
  belongs_to :client
  validates :total_amount, presence: true
  validates :date_of_bill, presence: true,uniqueness: true
end
