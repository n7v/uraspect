class DocCategory < ActiveRecord::Base
  attr_accessible :name

  has_many :docs, foreign_key: :category_id

  validates :name, presence: true

  default_scope :order => 'doc_categories.name ASC'
end
