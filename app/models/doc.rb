class Doc < ActiveRecord::Base
  attr_accessible :doc_category_id, :file_source, :name
end
