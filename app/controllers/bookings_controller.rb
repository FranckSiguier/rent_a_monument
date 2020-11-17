class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @monument = Monument.find(params[:monument_id])

    @booking.user = current_user
    @booking.monument = @monument

    authorize @booking
    if @booking.save!
      redirect_to user_path(current_user), notice: 'Booking was successfully created.'
    else
      redirect_to monument_path(@monument), notice: 'It didnt worked! try again!'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to user_path(current_user)
  end

  def booking_params
    params.require(:booking).permit(:date_of_arrival, :duration)
  end
end
