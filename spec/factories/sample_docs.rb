# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sample_doc, :class => 'SampleDocs' do
    category "MyString"
    name "MyString"
    file_source "MyString"
  end
end
