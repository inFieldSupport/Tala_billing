class User < ApplicationRecord
  
  scope :user_type, ->(type,client_id,month,year) { where("user_type= ? AND client_id = ? AND month =? AND year= ?",type,client_id,month,year) }
  scope :active_user, ->(type,client_id,month,year){where("user_type= ? AND client_id = ? AND active_user= true AND month =? AND year= ?",type,client_id,month,year)}
  belongs_to :client
  validates :user_name, presence: true
  validates :user_price, presence: true
  validates :user_type, presence: true
  validates :month, presence: true
  validates :year, presence: true
end
