class Page < ActiveRecord::Base
  attr_accessible :slug, :hidden, :seo_id, :seo_attributes, :layout, :parent_id, :name, :content

  belongs_to :seo
  has_ancestry

  accepts_nested_attributes_for :seo, :allow_destroy => true, :reject_if => :all_blank
  validates :slug, presence: true, uniqueness: true

  validates :name, presence: true

  extend FriendlyId
  friendly_id :slug

  scope :visible, -> { where(hidden: false) }
  scope :invisible, -> { where(hidden: true) }
  scope :without, (lambda do |field, values|
    raise "Unknown field :#{field} in Page model" unless field.to_s.in? attribute_names
    values = [values] unless values.is_a? Array
    where("#{field} NOT IN (?)", values)
  end)
end
