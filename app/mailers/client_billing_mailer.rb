class ClientBillingMailer < ApplicationMailer

    def billing_mail(client)
       @client= client
       mail to: client.email,subject:"Billing Sheet"
    end
end
