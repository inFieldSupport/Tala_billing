class Standard < ApplicationRecord
  belongs_to :client_id
  validates :standard_name, presence: true
  validates :standard_price, presence: true
  validates :standard_type, presence: true
end
