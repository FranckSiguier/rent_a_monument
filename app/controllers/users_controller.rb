class UsersController < ApplicationController
  def show
    authorize current_user.monuments
  end
end
