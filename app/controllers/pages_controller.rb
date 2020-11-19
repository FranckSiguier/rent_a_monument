class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @monuments = Monument.all
  end
end
