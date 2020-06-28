class LoginController < ApplicationController
    layout 'frontend'

    def index
        render 'frontend/login/index'
    end

end
