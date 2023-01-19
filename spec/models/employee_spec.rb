require 'rails_helper'

RSpec.describe Employee, type: :model do
  context "validations" do

    it "name validation" do 
      employee = Employee.new(email:"tala@gmail.com",password:"tala1234",password_confirmation:"tala1234").save 
      expect(employee).to eq(false)
    end

    it "email validation" do 
      employee = Employee.new(employee_name:"tala",email:"tala@gmail",password:"tala1234",password_confirmation:"tala1234").save 
      expect(employee).to eq(false)
    end

    it "password confirmation" do 
      employee = Employee.new(employee_name:"tala",email:"tala@gmail.com",password:"tala1234",password_confirmation:"tala12").save 
      expect(employee).to eq(false)
    end

    it "successfuly saved" do 
      employee = Employee.new(employee_name:"tala",email:"tala@gmail.com",password:"tala1234",password_confirmation:"tala1234").save 
      expect(employee).to eq(true)
    end


    
  end
  
end
