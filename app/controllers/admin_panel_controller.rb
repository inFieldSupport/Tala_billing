class AdminPanelController < ApplicationController
    before_action :check_signin

    def index
        if params[:client]
            @client = Client.find(params[:client])
        end  
        @clients = Client.all
        
    end

    def new_price
        if params[:client] && params[:user_type] 
            @user = User.where(client: params[:client],user_type: params[:user_type]).first
        end
        if params[:client] && params[:standard_type] 
            @standard = Standard.where(client: params[:client],standard_type: params[:standard_type]).first
        end
    end

    def new_active_user
        if params[:client] && params[:user_type] 
            @user = User.where(client: params[:client],user_type: params[:user_type]).first
        end
        if params[:client] && params[:standard_type] 
            @standard = Standard.where(client: params[:client],standard_type: params[:standard_type]).first
        end
    end
end
