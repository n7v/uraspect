class Order < ActiveRecord::Base
   attr_accessible :email, :content, :last_name, :first_name, :phone
   validates :email, :content, :last_name, :first_name, :phone, presence: true
end
