class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "登録が完了しました"
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.name = params[:name]
    @user.email = params[:email]
    @user.profile = params[:profile]
    @user.password = params[:password]
    binding.pry
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render :edit
    end
  end

private
  def user_params
    params.require(user).permit(:name, :email, :profile, :password, :password_confirmation)
  end

end
