class SessionsController < ApplicationController

    def create
        user = User.find_by(email:login_params[:email])
        if user && user.authenticate(login_params[:password])
            session[:user_id] = user.id
            redirect_to '/painel_admin_testes'
        else
            flash[:login_errors] = ['invalido']
            redirect_to '/'
        end 
    end

    def destroy
            session.delete(:user_id)
            redirect_to '/'
 
    end
    
    private
        def login_params
            params.require(:login).permit(:email, :password)
        end    
end

