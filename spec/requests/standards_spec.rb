require 'rails_helper'

RSpec.describe "Standards", type: :request do
  describe "standard controller" do

    it "update" do 
      client= Client.new(client_name:"A&G")
      client.save
      standard = Standard.new(standard_name:"test",standard_price: 20,standard_type:"Routing",client: client)
      standard.save
      put standard_path(standard.id),:params=>{:standard=>{:price=>30}}
    end

    it "active standard" do 
      client= Client.new(client_name:"A&G")
      client.save
      standard = Standard.new(standard_name:"test",standard_price: 20,standard_type:"Routing",client: client)
      standard.save
      put active_standard_path,:params=>{:client=> client.id,:standard_type=>"Routing",:active_standard_count=>1}
    end
  end
end
