class MonumentsController < ApplicationController
  before_action :set_monument, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @monuments = policy_scope(Monument).order(created_at: :desc)
  end

  def show
    @dates = set_booked_dates
    @review = Review.new
    @booking = Booking.new
  end

  def new
    @monument = Monument.new
    authorize @monument
  end

  def create
    authorize current_user.monuments
    @monument = Monument.new(monument_params)
    @monument.user = current_user

    authorize @monument
    if @monument.save
      @monument.user.host = true

      redirect_to monuments_path, notice: 'Monument was successfully created.'
    else
      render :new
    end
    authorize @monument
  end

  def edit
  end

  def update
  end

  private

  def set_monument
    @monument = Monument.find(params[:id])
    authorize @monument
  end

  def set_booked_dates
    @dates = []
    @monument.bookings.each do |booking|
      @dates << {
        from: booking.date_of_arrival,
        to: booking.date_of_departure
      }
    end
    @dates.to_json
  end

  def monument_params
    params.require(:monument).permit(:name, :description, :price_per_night, photos: [])
  end
end
