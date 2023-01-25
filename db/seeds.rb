# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "csv"

Employee.create!(employee_name:"tala",email:"tala@gmail.com",password:"tala1234",password_confirmation:"tala1234")

################ clients ###############################################
CSV.foreach(Rails.root.join('lib/CSV/client.csv'), headers: true) do |row|
    Client.create! do |model|
      model.client_name = row[0]
      model.email = row[1]
    end
end
####################### users ###########################
CSV.foreach(Rails.root.join('lib/CSV/user.csv'), headers: true) do |row|
    client = Client.find_by(client_name: row[4])
    User.create! do |model|
      model.user_name= row[0]
      model.user_type= row[1]
      model.user_price= row[2]
      model.active_user= row[3]
      model.client = client
      model.month= row[5]
      model.year= row[6]
    end
end

########################### standard ########################
# counter = 0
CSV.foreach(Rails.root.join('lib/CSV/standard.csv'), headers: true) do |row|
    client = Client.find_by(client_name: row[4])
    # puts '================================'
    # puts client.inspect
    # puts counter=counter + 1
    # puts '================================'
    Standard.create! do |model|
      model.standard_name= row[0]
      model.standard_type= row[1]
      model.standard_price= row[2]
      model.active_standard= row[3]
      model.client= client
      model.month= row[5]
      model.year= row[6]
    end
end



#############################################################################################################
############# client 1 ########################
############################################################################################################

# Client.create(client_name: "A&G",email: "ag_company@gmail.com")
# client = Client.last

# 5.times do |n|
#   user_name= Faker::Name.name
#   user_type="Admin" 
#   user_price= 22.40
#   User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client,month: 1,year: 2023)
# end

# 5.times do |n|
#     user_name= Faker::Name.name
#     user_type="Admin" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client,month: 1,year: 2023)
# end

# 3.times do |n|
#     user_name= Faker::Name.name
#     user_type="Dispatcher" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client,month: 1,year: 2023)
# end

# 1.times do |n|
#     user_name= Faker::Name.name
#     user_type="Dispatcher" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client,month: 1,year: 2023)
# end



# 2.times do |n|
#     user_name= Faker::Name.name
#     user_type="Mechanic" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client,month: 1,year: 2023)
# end

# 3.times do |n|
#     user_name= Faker::Name.name
#     user_type="Mechanic" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client,month: 1,year: 2023)
# end



# 20.times do |n|
#     user_name= Faker::Name.name
#     user_type="Office_Staff" 
#     user_price= 8.96
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client,month: 1,year: 2023)
# end

# 2.times do |n|
#     user_name= Faker::Name.name
#     user_type="Office_Staff" 
#     user_price= 8.96
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client,month: 1,year: 2023)
# end

# 5.times do |n|
#     user_name= Faker::Name.name
#     user_type="Sub_Contractor" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client,month: 1,year: 2023)
# end

# 3.times do |n|
#     user_name= Faker::Name.name
#     user_type="Sub_Contractor" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client,month: 1,year: 2023)
# end


# 2.times do |n|
#     user_name= Faker::Name.name
#     user_type="Technician" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client,month: 1,year: 2023)
# end

# 80.times do |n|
#     user_name= Faker::Name.name
#     user_type="Consumer" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client,month: 1,year: 2023)
# end

# 20.times do |n|
#     user_name= Faker::Name.name
#     user_type="Consumer" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client,month: 1,year: 2023)
# end

# ################################################################################################################
# ######client 2 ############
# ###############################################################################################################

# Client.create(client_name: "Custom Brands (Eclipse)",email:"custom_brands@gmail.com")
# client_2 = Client.last

# 15.times do |n|
#   user_name= Faker::Name.name
#   user_type="Admin" 
#   user_price= 43.50
#   User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client_2,month: 1,year: 2023)
# end

# 3.times do |n|
#     user_name= Faker::Name.name
#     user_type="Admin" 
#     user_price= 43.50
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_2,month: 1,year: 2023)
#   end


# 10.times do |n|
#     user_name= Faker::Name.name
#     user_type="Technician" 
#     user_price= 43.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_2,month: 1,year: 2023)
# end

# 4.times do |n|
#     user_name= Faker::Name.name
#     user_type="Technician" 
#     user_price= 43.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client_2,month: 1,year: 2023)
# end

# 100.times do |n|
#     user_name= Faker::Name.name
#     user_type="Consumer" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client_2,month: 1,year: 2023)
# end

# 50.times do |n|
#     user_name= Faker::Name.name
#     user_type="Consumer" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_2,month: 1,year: 2023)
# end

# 10.times do |n|
#     user_name= Faker::Name.name
#     user_type="Dispatcher" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_2,month: 1,year: 2023)
# end

# 11.times do |n|
#     user_name= Faker::Name.name
#     user_type="Mechanic" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_2,month: 1,year: 2023)
# end

# 11.times do |n|
#     user_name= Faker::Name.name
#     user_type="Office_Staff" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_2,month: 1,year: 2023)
# end

# 10.times do |n|
#     user_name= Faker::Name.name
#     user_type="Sub_Contractor" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_2,month: 1,year: 2023)
# end



# # ###################################################################################################
# # ####### client 3 ############
# # ###################################################################################################

# Client.create(client_name: "Eastwing",email:"eastwing@gmail.com")
# client_3 = Client.last

# 2.times do |n|
#   user_name= Faker::Name.name
#   user_type="Admin" 
#   user_price= 36.00
#   User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client_3,month: 1,year: 2023)
# end


# 10.times do |n|
#     user_name= Faker::Name.name
#     user_type="Sub_Contractor" 
#     user_price= 36.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client_3,month: 1,year: 2023)
# end

# 7.times do |n|
#     user_name= Faker::Name.name
#     user_type="Technician" 
#     user_price= 36.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: true,client: client_3,month: 1,year: 2023)
# end

# 6.times do |n|
#     user_name= Faker::Name.name
#     user_type="Technician" 
#     user_price= 36.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_3,month: 1,year: 2023)
# end

# 11.times do |n|
#     user_name= Faker::Name.name
#     user_type="Office_Staff" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_3,month: 1,year: 2023)
# end

# 10.times do |n|
#     user_name= Faker::Name.name
#     user_type="Dispatcher" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_3,month: 1,year: 2023)
# end

# 11.times do |n|
#     user_name= Faker::Name.name
#     user_type="Mechanic" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_3,month: 1,year: 2023)
# end

# 80.times do |n|
#     user_name= Faker::Name.name
#     user_type="Consumer" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,active_user: false,client: client_3,month: 1,year: 2023)
# end



# ###################################################################################################
# ################# standards for client 1###########################################################
# ###################################################################################################

# client = Client.find_by(client_name: "A&G")
# 1.times do |n|
#     standard_name="standard name" 
#     standard_type="Accounting" 
#     standard_price= 280.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: true,client: client,month: 1,year: 2023)
# end

# 10.times do |n|
#     standard_name="standard name" 
#     standard_type="Telematics" 
#     standard_price= 50.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: true,client: client,month: 1,year: 2023)
# end

# 5.times do |n|
#     standard_name="standard name" 
#     standard_type="Telematics" 
#     standard_price= 50.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: false,client: client,month: 1,year: 2023)
# end

# 5.times do |n|
#     standard_name="standard name" 
#     standard_type="Bin Module" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: false,client: client,month: 1,year: 2023)
# end

# 5.times do |n|
#     standard_name="standard name" 
#     standard_type="Bin Monitoring" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: false,client: client,month: 1,year: 2023)
# end

# 5.times do |n|
#     standard_name="standard name" 
#     standard_type="SMS Delivery" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: false,client: client,month: 1,year: 2023)
# end

# 5.times do |n|
#     standard_name="standard name" 
#     standard_type="Routing" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: false,client: client,month: 1,year: 2023)
# end



# ###################################################################################################
# ################# standards for client 2###########################################################
# ###################################################################################################

# client = Client.find_by(client_name: "Custom Brands (Eclipse)")
# 1.times do |n|
#     standard_name="standard name" 
#     standard_type="SMS Delivery" 
#     standard_price= 5.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: true,client: client,month: 1,year: 2023)
# end

# 2.times do |n|
#     standard_name="standard name" 
#     standard_type="Bin Monitoring" 
#     standard_price= 289.90
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: true,client: client,month: 1,year: 2023)
# end 

# 2.times do |n|
#     standard_name="standard name" 
#     standard_type="Bin Monitoring" 
#     standard_price= 289.90
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: false,client: client,month: 1,year: 2023)
# end 

# 1.times do |n|
#     standard_name="standard name" 
#     standard_type="Accounting" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: true,client: client,month: 1,year: 2023)
# end

# 10.times do |n|
#     standard_name="standard name" 
#     standard_type="Telematics" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: true,client: client,month: 1,year: 2023)
# end

# 5.times do |n|
#     standard_name="standard name" 
#     standard_type="Routing" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: false,client: client,month: 1,year: 2023)
# end

# 5.times do |n|
#     standard_name="standard name" 
#     standard_type="Bin Module" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: false,client: client,month: 1,year: 2023)
# end

# ###################################################################################################
# ################# standards for client 3###########################################################
# ###################################################################################################
# client = Client.find_by(client_name: "Eastwing")
# 1.times do |n|
#     standard_name="standard name" 
#     standard_type="SMS Delivery" 
#     standard_price= 5.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: true,client: client,month: 1,year: 2023)
# end

# 2.times do |n|
#     standard_name="standard name" 
#     standard_type="Bin Monitoring" 
#     standard_price= 289.90
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: true,client: client,month: 1,year: 2023)
# end 

# 2.times do |n|
#     standard_name="standard name" 
#     standard_type="Bin Module" 
#     standard_price= 289.90
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: false,client: client,month: 1,year: 2023)
# end 

# 1.times do |n|
#     standard_name="standard name" 
#     standard_type="Accounting" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: true,client: client,month: 1,year: 2023)
# end

# 10.times do |n|
#     standard_name="standard name" 
#     standard_type="Telematics" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: true,client: client,month: 1,year: 2023)
# end

# 5.times do |n|
#     standard_name="standard name" 
#     standard_type="Routing" 
#     standard_price= 0.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,active_standard: false,client: client,month: 1,year: 2023)
# end



















