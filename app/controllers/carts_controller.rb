class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :add ]

  def index 
    @order_items = @cart.order_items
  end 

  def add 
    @toy = Toy.find(params[:id])
    quantity_to_add = params[:quantity].to_i
    
    cart_toys = @cart.toys
    
    if cart_toys.include?(@toy)
      existing_order = @cart.order_items.find_by(toy_id: @toy.id) 
      
      existing_order.update(:quantity => (existing_order.quantity.to_i + quantity_to_add))
      redirect_to cart_url

    else  
      order = OrderItem.create(cart_id: @cart.id, toy_id: @toy.id, quantity: quantity_to_add)
      redirect_to cart_url
    end 
  end 


end