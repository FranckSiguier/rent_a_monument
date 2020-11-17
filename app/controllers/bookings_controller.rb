class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @monument = Monument.find(params[:monument_id])

    @booking.user = current_user
    @booking.monument = @monument

    if @booking.save!
      redirect_to monument_path(@monument), notice: 'Booking was successfully created.'
    else
      redirect_to monument_path(@monument), notice: 'It didnt worked! try again!'
    end
    authorize @monument
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date_of_arrival, :duration)
  end
end
