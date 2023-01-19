require 'rails_helper'

RSpec.describe User, type: :model do
  context "user validation" do

    it "user name validation" do
      client = client = Client.new(client_name:"A&G")
      client.save
      user = User.new(user_price:20,user_type:"Admin",client: client).save
      expect(user).to eq(false) 
    end
    
  end
  
end
