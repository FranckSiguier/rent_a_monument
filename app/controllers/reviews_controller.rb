class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @monument = Monument.find(params[:monument_id])
    authorize @review
  end


  def create
    authorize current_user.reviews
    @review = Review.new(review_params)
    @booking = Booking.find_by(monument_id: params[:monument_id], user_id: current_user.id)
    @monument = Monument.find(params[:monument_id])

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
