class Doc < ActiveRecord::Base
  attr_accessible :category_id, :file_source, :name

  belongs_to :category, class_name: "DocCategory", foreign_key: :category_id

  validates :name, :file_source, presence: true
end
