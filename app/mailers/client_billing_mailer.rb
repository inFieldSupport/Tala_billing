class ClientBillingMailer < ApplicationMailer

    def billing_mail(client,employee,month,year)
       @client= client
       @employee = Employee.find(employee.id)
       @month = month
       @year = year
       mail to: client.email,subject:"Billing Sheet"
    end
end
