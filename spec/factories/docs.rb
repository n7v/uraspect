# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :doc do
    doc_category_id 1
    name "MyString"
    file_source "MyString"
  end
end
