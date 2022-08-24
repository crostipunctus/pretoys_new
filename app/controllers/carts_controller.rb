class CartsController < ApplicationController
  def index 
    @cart = current_user.cart
    @orders = @cart.toys
  end
end