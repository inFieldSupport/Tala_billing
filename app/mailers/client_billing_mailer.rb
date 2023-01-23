class ClientBillingMailer < ApplicationMailer

    def billing_mail(client,employee)
       @client= client
       @employee = Employee.find(employee.id)
       mail to: client.email,subject:"Billing Sheet"
    end
end
