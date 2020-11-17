class MonumentsController < ApplicationController
  before_action :set_monument, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @monuments = policy_scope(Monument).order(created_at: :desc)
  end

  def show; end

  def new
    @monument = Monument.new
    authorize @restaurant
  end

  def create
    @monument = Monument.new(monument_params)
    @monument.user = current_user
    authorize @restaurant

    if @monument.save
      @monument.user.host = true
      @monument.save

      redirect_to root_path, notice: 'Monument was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def set_monument
    @monument = Monument.find(params[:id])
  end

  def monument_params
    params.require(:monument).permit(:name, :description, :photos, :price_per_night)
    authorize @monument
  end
end
