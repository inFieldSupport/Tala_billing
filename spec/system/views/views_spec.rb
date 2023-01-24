require 'rails_helper'

RSpec.describe "Views", type: :system do
 context "testing views" do
    it  "first employee will sign in, then he will enter an client name in search bar.
         Employee will be able to edit the prices or actives. After that the employe will an enter a date for the bill 
         and checks if everything is okay then send it to client. When he finish everything he will logout." do 

        employee = Employee.new(employee_name:"tala",email:"tala@gmail.com",password:"tala1234",password_confirmation:"tala1234")
        employee.save 
        visit login_path
        fill_in "Email",with: employee.email
        fill_in "Password",with: "tala1234"
        click_on 'Sign in'
        visit admin_panel_path
        client = Client.new(client_name:"A&G",email:"example@gmail.com")
        client.save #creating client
        user = User.new(user_name:"test",user_price: 20,user_type:"Admin",client: client).save #creating user for client
        standard = Standard.new(standard_name:"test",standard_price: 20,standard_type:"Routing",client: client).save #creating standard for client
        fill_in "client",with: client.client_name
        click_on 'Search'
        visit admin_panel_path(client: client.client_name)
        visit new_price_path(client: client,user_type: client.users.first.user_type)
        fill_in "user_price",with: '22.4'
        visit admin_panel_path(client: client.client_name)
        fill_in "date",with: '24/1/2023'
        click_on "Check"
        click_on "Send"
        visit admin_panel_path(client: client.client_name)
        click_on "Logout"
    end 
 end
 
end
