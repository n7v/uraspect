#coding: utf-8
class OrderMailer < ActionMailer::Base
	 
   def order_of_services(order)
     admins = AdminUser.all.map(&:email) 
	   @first_name = order.first_name
	   @last_name = order.last_name
	   @phone = order.phone
	   @email = order.email
	   @content = order.content
	  
	   mail :to => admins,
	        :subject => "Заказ услуг"
	 end
end
