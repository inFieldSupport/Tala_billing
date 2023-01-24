require 'rails_helper'

RSpec.describe Bill, type: :model do
  context "validation" do
    it "total amount" do 
     client = client = Client.new(client_name:"A&G",email:"example@gmail.com")
     client.save
     bill = Bill.new(client: client,date_of_bill:"24/1/2023").save
     expect(bill).to eq(false)
    end

    it "date of bill" do 
      client = client = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      bill = Bill.new(client: client,total_amount: 1000).save
      expect(bill).to eq(false)
     end

     it "client" do 
      bill = Bill.new(total_amount: 1000,date_of_bill:"24/1/2023").save
      expect(bill).to eq(false)
     end

     it "should successfuly save" do 
      client = client = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      bill = Bill.new(client: client,date_of_bill:"24/1/2023",total_amount: 1000).save
      expect(bill).to eq(true)
     end
    
  end
  
end
