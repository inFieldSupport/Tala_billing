class StandardsController < ApplicationController
    before_action :check_signin

    def update
        standard = Standard.find(params[:id])
        standards = Standard.where(client: standard.client,standard_type: standard.standard_type )
        standards.each do |standard|
            standard.update(standard_price: params[:standard][:price])
        end
        @client = Client.find_by(id: standard.client.id)
        respond_to do |format|
            flash[:success ]="Updated!!" 
            format.turbo_stream
            format.html { redirect_to admin_panel_path }
        end
    end

    def active_standard 
        count = Standard.where(client: params[:client],standard_type: params[:standard_type]).count
        @client = Client.find( params[:client])
        if count >= params[:active_standard_count].to_i && params[:active_standard_count].to_i >= 0
            count_unactive = Standard.where(client: params[:client],standard_type: params[:standard_type],active_standard: false).count
            count_active =  Standard.where(client: params[:client],standard_type: params[:standard_type],active_standard: true).count
             if params[:active_standard_count].to_i > count_active
                new_active = params[:active_standard_count].to_i - count_active
                while new_active >= 1
                    unactive_standard = Standard.where(client: params[:client],standard_type: params[:standard_type],active_standard: false).first
                    unactive_standard.update(active_standard: true)
                    new_active = new_active - 1
                end
             end
             if params[:active_standard_count].to_i < count_active
                new_unactive = count_active - params[:active_standard_count].to_i 
                while new_unactive >= 1 
                    active_standard = Standard.where(client: params[:client],standard_type: params[:standard_type],active_standard: true).first
                    active_standard.update(active_standard: false)
                    new_unactive = new_unactive - 1
                end
             end
             respond_to do |format|
                flash[:success ]="Updated!!" 
                format.turbo_stream
                format.html { redirect_to admin_panel_path }
            end
        else 
            respond_to do |format|
                flash[:danger ]="Failed. It may because you enter unvalid number. PLease be careful that you need to enter a number between 0 and total registered." 
                format.turbo_stream
                format.html {  redirect_to admin_panel_path(client: @client.client_name)}
            end
        end
        
    end

end
