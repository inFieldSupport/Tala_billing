class AdminPanelController < ApplicationController
    before_action :check_signin

    def index
        if params[:client] && params[:select][:month] && params[:select][:year]
            @client = Client.find_by(client_name: params[:client])  
            session[:month]=params[:select][:month].to_i
            session[:year]=params[:select][:year].to_i
        else
            @clients = Client.all
        end   
    end

    def new_price
        if params[:client] && params[:user_type] 
            @user = User.where(client: params[:client],user_type: params[:user_type],month: session[:month],year: session[:year]).first
        end
        if params[:client] && params[:standard_type] 
            @standard = Standard.where(client: params[:client],standard_type: params[:standard_type],month: session[:month],year: session[:year]).first
        end
    end

    def new_active_user
        if params[:client] && params[:user_type] 
            @user = User.where(client: params[:client],user_type: params[:user_type],month: session[:month],year: session[:year]).first
        end
        if params[:client] && params[:standard_type] 
            @standard = Standard.where(client: params[:client],standard_type: params[:standard_type],month: session[:month],year: session[:year]).first
        end
    end

    def send_email 
        client = Client.find(params[:client_id])
        ClientBillingMailer.billing_mail(client,current_user,session[:month],session[:year]).deliver_now
        flash[:success]="Email is sent to #{client.client_name}."
        redirect_to admin_panel_path
    end

end
