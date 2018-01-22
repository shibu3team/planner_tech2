class SpotsController < ApplicationController
  def new
    @spot = Spot.new
  end

  def index
    @spots = Spot.all
    # @topics = Topic.all.includes(:favorite_users).order(created_at: :desc)
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to new_plan_spot_path(@spot.plan_id), notice: "登録が完了しました"
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end
  end

  def show
    @spot = Spot.find_by(id:params[:id])
  end


  def edit
  end



  def update
  end

  private
    def spot_params
      params.require(:spot).permit(:name, :address, :spot_time, :price, :plan_id)
    end


end
