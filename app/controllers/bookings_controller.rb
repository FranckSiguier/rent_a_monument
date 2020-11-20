require 'date'

class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @monument = Monument.find(params[:monument_id])

    @booking.user = current_user
    @booking.monument = @monument

    arriv_depart = params['booking']['date_of_arrival'].split(' ').join.split('to')
    if !arriv_depart[0].nil? && !arriv_depart[1].nil?
      @booking.date_of_arrival = arriv_depart[0].to_date
      @booking.date_of_departure = arriv_depart[1].to_date
      @booking.duration = @booking.date_of_departure - @booking.date_of_arrival
    end

    authorize @booking

    if @booking.duration.nil?
      redirect_to monument_path(@monument), notice: "Veuillez entrez vos dates"
    elsif @booking.save!
      redirect_to user_path(current_user), notice: 'Votre réservation a fonctionné'
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
