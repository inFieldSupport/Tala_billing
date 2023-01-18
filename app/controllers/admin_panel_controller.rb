class AdminPanelController < ApplicationController
    before_action :check_signin

    def index
        @clients = Client.all
        @client = Client.first
    end
end
