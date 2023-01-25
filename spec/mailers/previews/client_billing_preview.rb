# Preview all emails at http://localhost:3000/rails/mailers/client_billing
class ClientBillingPreview < ActionMailer::Preview

    def billing 
        client = Client.first
        employee= Employee.first
        month = 1
        year= 2023
        ClientBillingMailer.billing_mail(client,employee,month,year)
    end

end
