class PasswordsController < ApplicationController

    def edit
      @user = current_user
    end

    def update
      @user = User.find(params[:id])
      binding.pry
      if @user.update_attributes(user_params)
            redirect_to "/", notice: '更新しました'
      else
        render :edit
      end
    end

  private
    def user_params
      params.require(:user).permit(:password, :password_new, :password_confirmation)
    end

end
