class ReviewsController < ApplicationController
 
 def create
    @order = Order.new(params[:order])
    if @order.save
       redirect_to thanks_order_path(@order)
    end
 end

end

