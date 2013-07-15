class OrdersController < ApplicationController
 
 def create
    @order = Order.new(params[:order])
    if @order.save
       render 'orders/thanks_order'
    else
       @page = Page.find_by_slug('order_of_services')
       render 'pages/order_of_services'
     end
 end

end

