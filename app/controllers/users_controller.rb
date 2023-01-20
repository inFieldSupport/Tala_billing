class UsersController < ApplicationController
    before_action :check_signin

    def update
        user = User.find(params[:id])
        users = User.where(client: user.client,user_type: user.user_type )
        users.each do |user|
            user.update(user_price: params[:user][:price])
        end

        @client = Client.find_by(id: user.client.id)
        respond_to do |format|
            format.turbo_stream
            format.html { redirect_to admin_panel_path }
        end
        
    end

    def active_user
           count = User.where(client: params[:client],user_type: params[:user_type]).count

           if count >= params[:active_user_count].to_i && params[:active_user_count].to_i >= 0
            count_unactive = User.where(client: params[:client],user_type: params[:user_type],active_user: false).count
            count_active =  User.where(client: params[:client],user_type: params[:user_type],active_user: true).count
             if params[:active_user_count].to_i > count_active
                new_active = params[:active_user_count].to_i - count_active
                while new_active >= 1
                    unactive_user = User.where(client: params[:client],user_type: params[:user_type],active_user: false).first
                    unactive_user.update(active_user: true)
                    new_active = new_active - 1
                end
             end
             if params[:active_user_count].to_i < count_active
                new_unactive = count_active - params[:active_user_count].to_i 
                while new_unactive >= 1 
                    active_user = User.where(client: params[:client],user_type: params[:user_type],active_user: true).first
                    active_user.update(active_user: false)
                    new_unactive = new_unactive - 1
                end
             end
             @client = Client.find( params[:client])
             respond_to do |format|
                format.turbo_stream
                format.html { redirect_to admin_panel_path }
            end
            else
                 flash[:danger]="Failed. It may because you enter unvalid number. PLease be careful that you need to enter a number between 0 and total registered."
                 redirect_to admin_panel_path 
            end
        end
            
end
