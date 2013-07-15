#coding: utf-8

class OrderMailer < ActionMailer::Base
  
  ADMIN = [
    'admin@example.com'
  ]
  
  def order_of_services(last_name,first_name, phone, email, content)
    @last_name = last_name
    @last_name = first_name
    @phon = phone
    @email = email
    @content = content
    
    mail :to => ADMIN,
         :subject => "Заказ услуг"
  end
  
end
