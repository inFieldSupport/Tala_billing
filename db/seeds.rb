# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Employee.create!(employee_name:"tala",email:"tala@gmail.com",password:"tala1234",password_confirmation:"tala1234")

#############################################################################################################
############# client 1 ########################
############################################################################################################

# Client.create(client_name: "A&G")
# client = Client.last

# 10.times do |n|
#   user_name= Faker::Name.name
#   user_type="Admin" 
#   user_price= 22.40
#   User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client)
# end

# 3.times do |n|
#     user_name= Faker::Name.name
#     user_type="Dispatcher" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client)
# end

# 3.times do |n|
#     user_name= Faker::Name.name
#     user_type="Mechanic" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client)
# end

# 50.times do |n|
#     user_name= Faker::Name.name
#     user_type="Office_Staff" 
#     user_price= 8.96
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client)
# end

# 5.times do |n|
#     user_name= Faker::Name.name
#     user_type="Sub_Contractor" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client)
# end


# 2.times do |n|
#     user_name= Faker::Name.name
#     user_type="Technician" 
#     user_price= 22.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client)
# end

# 100.times do |n|
#     user_name= Faker::Name.name
#     user_type="Consumer" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client)
# end

################################################################################################################
######client 2 ############
###############################################################################################################

# Client.create(client_name: "Custom Brands (Eclipse)")
# client_2 = Client.last

# 10.times do |n|
#   user_name= Faker::Name.name
#   user_type="Admin" 
#   user_price= 43.50
#   User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client_2)
# end


# 10.times do |n|
#     user_name= Faker::Name.name
#     user_type="Technician" 
#     user_price= 43.40
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client_2)
# end

# 250.times do |n|
#     user_name= Faker::Name.name
#     user_type="Consumer" 
#     user_price= 0.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client_2)
# end

# ###################################################################################################
# ####### client 3 ############
# ###################################################################################################

# Client.create(client_name: "Eastwing")
# client_3 = Client.last

# 2.times do |n|
#   user_name= Faker::Name.name
#   user_type="Admin" 
#   user_price= 36.00
#   User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client_3)
# end


# 10.times do |n|
#     user_name= Faker::Name.name
#     user_type="Sub_Contractor" 
#     user_price= 36.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client_3)
# end

# 11.times do |n|
#     user_name= Faker::Name.name
#     user_type="Technician" 
#     user_price= 36.00
#     User.create!(user_name: user_name,user_type: user_type,user_price: user_price,client: client_3)
# end

###################################################################################################
################# standards for client 1###########################################################
###################################################################################################

# client = Client.find_by(client_name: "A&G")
# 1.times do |n|
#     standard_name="standard name" 
#     standard_type="Accounting" 
#     standard_price= 280.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,client: client)
# end

# 10.times do |n|
#     standard_name="standard name" 
#     standard_type="Telematics" 
#     standard_price= 50.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,client: client)
# end

###################################################################################################
################# standards for client 2###########################################################
###################################################################################################

# client = Client.find_by(client_name: "Custom Brands (Eclipse)")
# 1.times do |n|
#     standard_name="standard name" 
#     standard_type="SMS Delivery" 
#     standard_price= 5.00
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,client: client)
# end

# 2.times do |n|
#     standard_name="standard name" 
#     standard_type="Bin Monitoring" 
#     standard_price= 289.90
#     Standard.create!(standard_name: standard_name,standard_type: standard_type,standard_price: standard_price,client: client)
# end 

# users = User.all 

# users.each do |user|
#     user.update(active_user: true)
# end

# standards = Standard.all 

# standards.each do |standard| 
#     standard.update(active_standard: true)
# end

















