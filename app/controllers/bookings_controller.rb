require 'date'


class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @monument = Monument.find(params[:monument_id])

    @booking.user = current_user
    @booking.monument = @monument


    arriv_depart = params['booking']['date_of_arrival'].split(' ').join.split('to')
    @booking.date_of_arrival = arriv_depart[0].to_date
    @booking.date_of_departure = arriv_depart[1].to_date
    @booking.duration = @booking.date_of_departure - @booking.date_of_arrival


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
