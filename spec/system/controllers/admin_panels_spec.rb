require 'rails_helper'

RSpec.describe "AdminPanels", type: :system do
 context "integration testing admin panel" do
  
  it "first getting the client billing table ,then editing the price or active for both users and standards" do
    client = Client.new(client_name:"A&G",email:"example@gmail.com")
    client.save
    get admin_panel_path,:params=>{:client=>client.id}
    get new_price_path,:params=>{:client=> client.id,:user_type=>"Admin"}
    get new_price_path,:params=>{:client=> client.id,:standard_type=>"Routing"}
    get new_active_user_path,:params=>{:client=> client.id,:user_type=>"Admin"}
    get new_active_user_path,:params=>{:client=> client.id,:standard_type=>"Routing"}
    get send_email_path,:params=>{:client_id=>client.id}
  end
 end
 
end
