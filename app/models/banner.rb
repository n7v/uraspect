class Banner < ActiveRecord::Base
  attr_accessible :content, :url

  validates :content, presence: true
end
