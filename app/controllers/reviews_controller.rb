class ReviewsController < ApplicationController

  def new
  end


  def create
    @review = Review.new(review_params)
    @monument = Monument.find(params[:monument_id])
    @booking = Booking.find_by(monument_id: @monument.id, user_id: current_user.id)

    @review.user = current_user
    @review.booking = @booking

    if @review.save!
      redirect_to monument_path(@monument), notice: 'Review was successfully created.'
    else
      redirect_to monument_path(@monument), notice: 'It didnt worked! try again!'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :title, :rating)
  end

end
