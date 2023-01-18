require 'rails_helper'

RSpec.describe Employee, type: :model do
  context "validations" do

    it "name validation" do 
      employee = Employee.new(email:"tala2gmail.com",password:"tala1234",password_confirmation:"tala1234").save 
      expect(employee).to eq(false)
    end
    
  end
  
end
