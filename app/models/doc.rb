class Doc < ActiveRecord::Base
  attr_accessible :name, :category_id, :sample
  has_attached_file :sample

  TYPE_DOC = 'application/msword'
  TYPE_DOCX = 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'

  belongs_to :category, class_name: "DocCategory", foreign_key: :category_id

  validates :name, presence: true
  validates_attachment :sample, presence: true,
                                content_type: { content_type: [TYPE_DOC, TYPE_DOCX] }

  default_scope :order => 'docs.name ASC'
  scope :without_category, -> { where('category_id IS NULL') }
end
