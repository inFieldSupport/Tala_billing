class Standard < ApplicationRecord
 
  scope :standard_type, ->(type,client_id,month,year) { where("standard_type= ? AND client_id = ? AND month=? AND year=?", type,client_id,month,year) }
  scope :active_standard, ->(type,client_id,month,year){where("standard_type= ? AND client_id = ? AND active_standard= true AND month=? AND year=?", type,client_id,month,year)}
  belongs_to :client
  validates :standard_name, presence: true
  validates :standard_price, presence: true
  validates :standard_type, presence: true
  validates :month, presence: true
  validates :year, presence: true
end
