class CartsController < ApplicationController
  before_action :authenticate_user!, only: %i[ index ]

  def index 
    @toys = @cart.toys
  end 


end