require 'rails_helper'

RSpec.describe User, type: :model do
  context "user validation" do

    it "user name validation" do
      client = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      user = User.new(user_price:20,user_type:"Admin",client: client).save
      expect(user).to eq(false) 
    end

    it "price validation" do 
      client = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      user = User.new(user_name:"test",user_type:"Admin",client: client).save
      expect(user).to eq(false) 
    end

    it "user type validation" do 
      client  = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      user = User.new(user_name:"test",user_price: 20,client: client).save
      expect(user).to eq(false) 
    end

    it "month validation" do 
      client  = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      user = User.new(user_name:"test",user_price: 20,user_type:"Admin",client: client,year:2023).save
      expect(user).to eq(false) 
    end

    it "year validation" do 
      client  = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      user = User.new(user_name:"test",user_price: 20,user_type:"Admin",client: client,month:1).save
      expect(user).to eq(false) 
    end


    it "client presence" do 
      user = User.new(user_name:"test",user_price:20,user_type:"Admin",month: 1,year: 2023).save
      expect(user).to eq(false) 
    end

    it "successfuly saved (by default take the active user false/nil)" do 
      client= Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      user = User.new(user_name:"test",user_price: 20,user_type:"Admin",client: client,month: 1,year: 2023).save
      expect(user).to eq(true) 
    end
    
  end
  
end
