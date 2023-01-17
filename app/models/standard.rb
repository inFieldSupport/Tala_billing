class Standard < ApplicationRecord

  scope :standard_type, ->(type,client_id) { where("standard_type= ? AND client_id = ?", type,client_id) }
  belongs_to :client
  validates :standard_name, presence: true
  validates :standard_price, presence: true
  validates :standard_type, presence: true
end
