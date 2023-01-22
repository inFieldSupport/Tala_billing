class InvoiceController < ApplicationController

    layout "lay"   

    def bill  
        @client = Client.find(params[:client])
        @users_type = ["Admin","Dispatcher","Mechanic","Office_Staff","Sub_Contractor","Technician","Consumer"]
        @standards_type=["Telematics","Accounting","Bin Module","Bin Monitoring","SMS Delivery","Routing"]
    end
end
