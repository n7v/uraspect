DocCategory.reset_column_information
Doc.reset_column_information

3.times { FactoryGirl.create(:doc_category) }
DocCategory.all.push(nil).each do |category|
  3.times { FactoryGirl.create(:doc, category: category) }
end
