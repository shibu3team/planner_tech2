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

    binding.pry
    if @spot.save
      redirect_to root_path, notice: "登録が完了しました"
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
      params.require(:spot).permit(:name, :address, :spot_time, :price)
    end


end
