class Doc < ActiveRecord::Base
  attr_accessible :category_id, :file_source, :name

  validates :name, :file_source, presence: true
end
