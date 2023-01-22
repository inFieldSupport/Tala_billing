require 'rails_helper'

RSpec.describe "Invoices", type: :request do
  describe "controller" do
    it "bill of client" do 
      client = Client.new(client_name:"A&G",email:"example@gmail.com")
      client.save
      get invoice_path,:params=>{:client=>client.id}
    end
    
  end
end
