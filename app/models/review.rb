class Review < ActiveRecord::Base
  attr_accessible :caption, :content, :moderated
end
