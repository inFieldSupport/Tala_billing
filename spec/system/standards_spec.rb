require 'rails_helper'

RSpec.describe "Standards", type: :system do

  context "integration testing standards" do

    it "edit the activity and price for standards with specific type" do 
      client= Client.new(client_name:"A&G")
      client.save
      standard = Standard.new(standard_name:"test",standard_price: 20,standard_type:"Routing",client: client)
      standard.save
      put standard_path(standard.id),:params=>{:standard=>{:price=>30}}
      put active_standard_path,:params=>{:client=> client.id,:standard_type=>"Routing",:active_standard_count=>1}
   end
  end
end
