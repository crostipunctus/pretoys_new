class CartsController < ApplicationController
  before_action :authenticate_user!, only: %i[ index ]

  def index 
    
    @order_items = @cart.order_items
  end 

  def add 

  end 


end