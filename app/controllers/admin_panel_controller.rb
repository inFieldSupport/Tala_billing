class AdminPanelController < ApplicationController
    before_action :check_signin

    def index
        if params[:client]
            @client = Client.find(params[:client])
        end  
        @clients = Client.all
        
    end
end
