require 'rails_helper'

RSpec.describe "Users", type: :system do
  context "integration testing users" do

   it "edit the activity and price for users with specific type" do 
    client= Client.new(client_name:"A&G",email:"example@gmail.com")
    client.save
    user = User.new(user_name:"test",user_price: 20,user_type:"Admin",client: client)
    user.save
    put user_path(user.id),:params=>{:user=>{:price=>30}}
    put active_user_path,:params=>{:client=> client.id,:user_type=>"Admin",:active_user_count=>1}
   end
    
  end
  
end
