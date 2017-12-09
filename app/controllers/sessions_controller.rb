class SessionsController < ApplicationController

    def new
      user = User.new
    end

    def create
      user = User.find_by(email: params[:session][:email])
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to users_path, notice: "ログインに成功しました"
      else
        flash.now[:alert] = "ログインに失敗しました"
        render "new"
      end

      # binding.pry
    end

    def destroy
      log_out
      redirect_to root_path
    end

    private
    def log_in(user)
      session[:user_id] = user.id
    end

    def log_out
      session.delete(:user_id)
      @current_user = nil
      reset_session
    end
end
