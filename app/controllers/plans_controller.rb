class PlansController < ApplicationController
  def new
    @plan = Plan.new
  end

  def index
    @plans = Plan.all
    # @topics = Topic.all.includes(:favorite_users).order(created_at: :desc)
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id
    if @plan.save
      redirect_to new_spot_path, notice: "登録が完了しました"
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end
  end


  private
  def plan_params
    params.require(:plan).permit(:name, :description, :time, :price, :time_category, :user_id)
  end


end
