class AdminPannelController < ApplicationController
    before_action :check_signin

    def index
        @clients = Client.all
    end
end
