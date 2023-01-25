require 'rails_helper'

RSpec.describe "AdminPanels", type: :request do
  describe "admin_panels controller" do
    it "index" do
      client = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      get admin_panel_path,:params=>{:client=>client.id,:select=>{:month=> 1,:year=> 2023}}
    end

    it "new price" do
      client = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      get new_price_path,:params=>{:client=> client.id,:user_type=>"Admin"}
      
      client = Client.new(client_name:"A&G")
      client.save
      get new_price_path,:params=>{:client=> client.id,:standard_type=>"Routing"}
    end

    it "new active user" do
      client = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      get new_active_user_path,:params=>{:client=> client.id,:user_type=>"Admin"}
      
      client = Client.new(client_name:"A&G")
      client.save
      get new_active_user_path,:params=>{:client=> client.id,:standard_type=>"Routing"}
    end

    it " send email" do 
      client = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      post send_email_path,:params=>{:client_id=>client.id}
    end


  end
end
