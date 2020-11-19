class UsersController < ApplicationController
  def show
    authorize current_user.monuments
    @bookings = current_user.bookings
    @review = Review.new
  end

  def edit
    authorize current_user
    @user = current_user
  end

  def update
    authorize current_user
    current_user.update(photo_params_require)
    current_user.save!
    redirect_to current_user
  end

  private

  def photo_params_require
    params.require(:user).permit(:photo)
  end
end
