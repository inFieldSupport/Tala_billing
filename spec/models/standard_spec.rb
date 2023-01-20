require 'rails_helper'

RSpec.describe Standard, type: :model do
  context "standard validation" do

    it "standard name validation" do
      client = Client.new(client_name:"A&G")
      client.save
      standard= Standard.new(standard_price:20,standard_type:"Routing",client: client).save
      expect(standard).to eq(false) 
    end

    it "standard price validation" do
      client = Client.new(client_name:"A&G")
      client.save
      standard= Standard.new(standard_name:"test",standard_type:"Routing",client: client).save
      expect(standard).to eq(false) 
    end

    it "standard type validation" do
      client = Client.new(client_name:"A&G")
      client.save
      standard= Standard.new(standard_name:"test",standard_price:20,client: client).save
      expect(standard).to eq(false) 
    end

    it "client presence" do
      standard= Standard.new(standard_name:"test",standard_price:20,standard_type:"Routing").save
      expect(standard).to eq(false) 
    end

    it "successfuly saved (by default take the active standard false/nil)" do 
      client = client = Client.new(client_name:"A&G")
      client.save
      standard = Standard.new(standard_name:"test",standard_price: 20,standard_type:"Routing",client: client).save
      expect(standard).to eq(true) 
    end
    
  end
  
end
