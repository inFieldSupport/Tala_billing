class Client < ApplicationRecord

    has_many :users 
    has_many :standars
    validates :client_name, presence: true
end
