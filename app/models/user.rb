class User < ApplicationRecord
  
  belongs_to :client_id
  validates :user_name, presence: true
  validates :user_price, presence: true
  validates :user_type, presence: true
end
