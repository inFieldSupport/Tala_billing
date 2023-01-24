class InvoiceController < ApplicationController

    layout "lay"   

    def bill  
        @client = Client.find(params[:client])
        total_amount = (params[:total_amount].to_f + params[:total_amount].to_f * 0.13).round(2)
        if Bill.find_by(client: params[:client],date_of_bill: params[:date])
          @bill = Bill.find_by(client: params[:client],date_of_bill: params[:date])
          @bill.update(date_of_bill: params[:date])
        else
          @bill = Bill.new(client: @client,total_amount: total_amount,date_of_bill: params[:date])
          @bill.save
        end
        @users_type = ["Admin","Dispatcher","Mechanic","Office_Staff","Sub_Contractor","Technician","Consumer"]
        @standards_type=["Telematics","Accounting","Bin Module","Bin Monitoring","SMS Delivery","Routing"]
    end
end
