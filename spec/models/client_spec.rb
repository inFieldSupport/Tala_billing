require 'rails_helper'

RSpec.describe Client, type: :model do
  context " client validation" do

    it "name validation" do 
      client = Client.new(email:"example@gmail.com").save
      expect(client).to eq(false)
    end

    it "email validation" do 
      client = Client.new(client_name:"A&G").save
      expect(client).to eq(false)
    end

    it "successfuly saved" do 
      client = Client.new(client_name:"A&G",email:"example@gmail.com").save
      expect(client).to eq(true)
    end
 
  end
  
end
