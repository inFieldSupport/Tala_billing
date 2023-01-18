class User < ApplicationRecord
  
  scope :user_type, ->(type,client_id) { where("user_type= ? AND client_id = ?",type,client_id) }
  scope :active_user, ->(type,client_id){where("user_type= ? AND client_id = ? AND active_user= true", type,client_id)}
  belongs_to :client
  validates :user_name, presence: true
  validates :user_price, presence: true
  validates :user_type, presence: true
  validates :active_user, presence: true
end
