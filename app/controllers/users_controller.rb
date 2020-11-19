class UsersController < ApplicationController
  def show
    authorize current_user.monuments
    @bookings = current_user.bookings
    @review = Review.new
  end
end
