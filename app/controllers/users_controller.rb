class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, notice: "登録が完了しました"
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
          redirect_to "/", notice: '更新しました'
    else
      render :edit
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :profile, :password, :password_confirmation)
  end

end
