require 'rails_helper'

RSpec.describe "Sessions", type: :system do
  context "integration testing sessions" do

    it "first sign in, after that logout" do 
      employee = Employee.new(email:"tala@gmail.com",password:"tala1234",password_confirmation:"tala1234")
      employee.save
      post signin_path,:params=>{:sessions=>{:email=> employee.email,:password=> employee.password}}
      get logout_path
    end
    
  end
  
end
