#coding: utf-8
class OrderMailer < ActionMailer::Base
  ADMIN = ['admin@example.com']
  def order_of_services(order)
    @last_name = order.last_name
    @last_name = order.first_name
    @phon = order.phone
    @email = order.email
    @content = order.content
    
    mail :to => ADMIN,
         :subject => "Заказ услуг"
  end
end
