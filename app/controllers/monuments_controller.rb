class MonumentsController < ApplicationController
  before_action :set_monument, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @monuments = Monument.all
  end

  def show; end

  def new
    @monument = Monument.new
  end

  def create
    @monument = Monument.new(monument_params)
    @monument.user = current_user
    if @monument.save
      @monument.user.host = true

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
    params.require(:monument).permit(:name, :description, :price_per_night, photos: [])
  end
end
