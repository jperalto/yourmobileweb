class SessionsController < ValidationController
    layout 'frontend'
    #skip_before_action :authorized, only: [:new, :create, :welcome, :login]



    def new
    end
  
    def login
    end
  
    def validar
        @user = User.find_by(username: params[:username])
         if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
           redirect_to '/authorized'
         else
             puts "Loggin failed #{params[:username]} - #{params[:password]}"
             flash[:login_errors] = ['invalid credentials']
           redirect_to '/login'
         end
    end
  
    def welcome
    end

    def logout 
        session[:user_id] = nil
        redirect_to root_path
    end
  
    def page_requires_login
    #   @users_list = User.all
    end


end
