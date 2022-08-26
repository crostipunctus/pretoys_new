class CartsController < ApplicationController
  before_action :authenticate_user!, only: %i[ index ]

  def index 
    @order_items = @cart.order_items
  end 

  def add 
    @toy = Toy.find(params[:id])
    quantity = params[:quantity].to_s
    puts quantity
    order_item = OrderItem.find_by(toy_id: @toy.id, cart_id: @cart.id)
    if order_item 
      puts order_item.quantity
      order_item.update(:quantity => quantity)
    else 
      order_item = OrderItem.create(cart_id: @cart.id, toy_id: @toy.id, quantity: quantity)
      redirect_to cart_path
    end 
    
  end 


end