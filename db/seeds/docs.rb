DocCategory.reset_column_information
Doc.reset_column_information

3.times { FactoryGirl.create(:doc_category) }
DocCategory.all.map(&:id).push(nil).each do |category_id|
  3.times { FactoryGirl.create(:doc, category_id: category_id) }
end
